import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;
List allCards = [];

class ToDoModelClass {
  int id;
  String title;
  String description;
  String date;
  int checkBox;

  ToDoModelClass({
    this.id = 0,
    required this.title,
    required this.description,
    required this.date,
    this.checkBox = 0,
  });

  Map<String, dynamic> toDoModelMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
      'checkBox': checkBox,
    };
  }
}
Future createDatabase() async {
  database = await openDatabase(
      join(await getDatabasesPath(), 'ToDoListAppDB5.db'),
      version: 1, onCreate: (db, version) async {
    await db.execute('''CREATE TABLE ToDoList(
          id INTEGER PRIMARY KEY,
          title TEXT,
          description TEXT,
          date TEXT,
          checkBox INT
        )''');
  });
  print("createDatabase");

  await getCardData();
}

void deleteCard(ToDoModelClass obj) async {
  final localDB = await database;
  await localDB.delete(
    "ToDoList",
    where: 'id = ?',
    whereArgs: [obj.id],
  );
  //allCards = await getCardData();
  print("Delete Card Successfully");
}

Future updateCardInDatabase(ToDoModelClass card) async {
  final localDB = await database;
  await localDB.update('ToDoList', card.toDoModelMap(),
      where: 'id = ?', whereArgs: [card.id]);
  await getCardData();
}



void insertData(ToDoModelClass obj) async {
  print("Insert data");
  print(obj.checkBox);
  final localDB = await database;
  await localDB.insert(
    "ToDoList",
    obj.toDoModelMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  await getCardData();
  //print("Insert Data");
}

Future getCardData() async {
  print("getcarddata");
  print(allCards);
  final localDB = await database;
  List<Map<String, dynamic>> cardList = await localDB.query("ToDoList");
  allCards = List.generate(cardList.length, (index) {
    return ToDoModelClass(
      id: cardList[index]['id'],
      title: cardList[index]['title'],
      description: cardList[index]['description'],
      date: cardList[index]['date'],
      checkBox: cardList[index]['checkBox'],
    );
  });
  print(allCards);
  print(cardList);
}
