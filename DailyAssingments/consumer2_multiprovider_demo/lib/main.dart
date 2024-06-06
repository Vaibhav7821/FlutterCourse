import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("In MainApp build");
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Player(playerName: "Virat", jerNo: 18);
          },
        ),
        ChangeNotifierProvider(create: (context) {
          return Match(matchNo: 200, runs: 8000);
        }),
      ],
      child: const MaterialApp(
        home: MatchSummary(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MatchSummary extends StatefulWidget {
  const MatchSummary({super.key});

  @override
  State createState() => _MatchSummaryState();
}

class _MatchSummaryState extends State {
  @override
  Widget build(BuildContext context) {
    log("In MatchSummary build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Consumer2 Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer2<Player, Match>(
              builder: (context, value, value2, child) {
                log("In Consumer2");
                return Column(
                  children: [
                    //Text(value.playerName),
                    Text(Provider.of<Player>(context).playerName),
                    const SizedBox(
                      height: 30,
                    ),
                    // Text("${value.jerNo}"),
                    Text("${Provider.of<Player>(context).jerNo}"),
                    const SizedBox(
                      height: 30,
                    ),
                    // Text("${value2.matchNo}"),
                    Text("${Provider.of<Match>(context).matchNo}"),
                    const SizedBox(
                      height: 30,
                    ),
                    // Text("${value2.runs}"),
                    Text("${Provider.of<Match>(context).runs}"),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Match>(context, listen: false)
                      .changeData(300, 9000);
                },
                child: const Text("Change Data"))
          ],
        ),
      ),
    );
  }
}

class Match with ChangeNotifier {
  int matchNo;
  int runs;

  Match({required this.matchNo, required this.runs});

  void changeData(int matchNo, int runs) {
    log("In Change data ");
    this.matchNo = matchNo;
    this.runs = runs;
    notifyListeners();
  }
}

class Player {
  String playerName;
  int jerNo;

  Player({required this.playerName, required this.jerNo});
}
