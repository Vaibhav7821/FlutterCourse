import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Player {
  final String name;
  final int jerNo;
  final int runs;
  final double avg;

  Player({
    required this.name,
    required this.jerNo,
    required this.runs,
    required this.avg,
  });

  Map<String, dynamic> playerMap() {
    return {
      'name': name,
      'jerNo': jerNo,
      'runs': runs,
      'avg': avg,
    };
  }

  @override
  String toString() {
    return "{Name:$name,jerNo:$jerNo,runs:$runs, avg:$avg}";
  }
}

Future addPlayerData(Player obj) async {
  final localDB = await database;

  await localDB.insert(
    "Player",
    obj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future getPlayerData() async {
  final localDB = await database;

  List listPlayers = await localDB.query("Player");

  return List.generate(listPlayers.length, (i) {
    return Player(
      name: listPlayers[i]['name'],
      jerNo: listPlayers[i]['jerNo'],
      runs: listPlayers[i]['runs'],
      avg: listPlayers[i]['avg'],
    );
  });
}

void main() async {
  //runApp(const MainApp());
  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(await getDatabasesPath(), "PlayerDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Player(
          name TEXT,
          jerNo INT PRIMARY KEY,
          runs INT,
          avg REAL)
        ''');
    },
  );

  Player batsman1 = Player(
    name: "Virat Kohli",
    jerNo: 18,
    runs: 60000,
    avg: 50.53,
  );

  await addPlayerData(batsman1);
  Player batsman2 = Player(
    name: "Rohit Sharma",
    jerNo: 45,
    runs: 50000,
    avg: 40.233,
  );

  await addPlayerData(batsman2);
  Player batsman3 = Player(
    name: "Shubman Gill",
    jerNo: 77,
    runs: 80000,
    avg: 80.52,
  );

  await addPlayerData(batsman3);

  print(await getPlayerData());
}

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }
