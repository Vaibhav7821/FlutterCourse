import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
// import 'package:sqflite/sql.dart';

dynamic database;
//List<Map<String, dynamic>> list = [];
List listOfCards = [];

class ToDoModelClass {
  String title;
  String description;
  String date;

  ToDoModelClass({
    required this.title,
    required this.description,
    required this.date,
  });
  Map<String, dynamic> cardDataIntoMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
    };
  }
}


Future createDatabase() async {
  database = await openDatabase(join(await getDatabasesPath(), 'ToDoListDB.db'),
      version: 1, onCreate: (db, version) async {
    await db.execute('''CREATE TABLE ToDoList(
    title TEXT PRIMARY KEY,
    description TEXT,
    date TEXT)''');
  });
  await getCardDetailsList();
}

Future<void> insertData(ToDoModelClass card) async {
  final localDB = await database;

  await localDB.insert(
    "ToDoList",
    card.cardDataIntoMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  await getCardDetailsList();
  print("INSERT DATA");
  print(listOfCards);
}

Future getCardDetailsList() async {
  final localDB = await database;
  print("I AM ------- HERE $localDB");
  List<Map<String, dynamic>> list = await localDB.query("ToDoList");

  listOfCards = List.generate(list.length, (index) {
    return ToDoModelClass(
      //cardId: list[index]['cardId'],
      title: list[index]['title'],
      description: list[index]['description'],
      date: list[index]['date'],
      //isTaskCompleted: list[index]['isTaskCompleted'],
    );
  });
  print(listOfCards);
}

void deleteCardFromDatabase(ToDoModelClass card) async {
  final localDB = await database;

  await localDB.delete(
    'ToDoList',
    where: 'title = ?',
    //whereArgs: [card.cardId],
    whereArgs: [card.title],
  );
  await getCardDetailsList();
  listOfCards = await getCardDetailsList();
}

Future updateCardInDatabase(ToDoModelClass card) async {
  final localDB = await database;

  await localDB.update('ToDoList', card.cardDataIntoMap(),
      where: 'title = ?', whereArgs: [card.title]);
  await getCardDetailsList();
}
