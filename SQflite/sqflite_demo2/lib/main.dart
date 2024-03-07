import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Employee {
  final int id;
  final String name;
  final double sal;

  Employee({
    required this.id,
    required this.name,
    required this.sal,
  });

  Map<String, dynamic> employeeMap() {
    return {
      'id': id,
      'name': name,
      'sal': sal,
    };
  }

  @override
  String toString() {
    return "{id:$id,name:$name,sal:$sal}";
  }
}

Future addEmpData(Employee obj) async {
  final localDB = await database;

  localDB.insert(
    "Employee",
    obj.employeeMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future getEmpData() async {
  final localDB = await database;
  List listEmp = await localDB.query("Employee");

  return List.generate(listEmp.length, (index) {
    return Employee(
      id: listEmp[index]['id'],
      name: listEmp[index]['name'],
      sal: listEmp[index]['sal'],
    );
  });
}

void main() async {
  runApp(const MainApp());

  database = openDatabase(
    join(await getDatabasesPath(), "EmployeeDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Employee(
        id INT PRIMARY KEY,
        name TEXT,
        sal REAL)
      ''');
    },
  );

  Employee emp1 = Employee(
    id: 12,
    name: 'Vaibhav',
    sal: 1.3,
  );

  await addEmpData(emp1);

  Employee emp2 = Employee(
    id: 10,
    name: 'Sagar',
    sal: 1.2,
  );

  await addEmpData(emp2);

  print(await getEmpData());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
