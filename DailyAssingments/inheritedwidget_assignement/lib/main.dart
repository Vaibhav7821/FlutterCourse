import 'package:flutter/material.dart';
import 'package:inheritedwidget_assignement/empmodel.dart';
import 'package:inheritedwidget_assignement/inheritedwidget.dart';
import 'logindata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EmployeeData(
      empObj: Employee(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  @override
  Widget build(BuildContext context) {
    return const Login();
  }
}
