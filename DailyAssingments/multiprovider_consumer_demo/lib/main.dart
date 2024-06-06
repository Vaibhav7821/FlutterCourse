import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:provider/provider.dart';

void main() {
 
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("In MAInApp build");

    return MultiProvider(
      providers: [
        Provider<Player>(create: (context) {
          return Player(playerName: "Virat", jerNo: 18);
        }),
        ChangeNotifierProvider<Match>(create: (context) {
          return Match(matchNo: 200, runs: 5000);
        }),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MatchSummary(),
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
        title: const Text(
          "Consumer Demo",
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(
            builder: (context, value, child) {
              log("In consumer");
              return Column(
                children: [
                  Text(
                    Provider.of<Player>(context).playerName,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "${Provider.of<Player>(context).jerNo}",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "${Provider.of<Match>(context).matchNo}",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "${Provider.of<Match>(context).runs}",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                log("Pressed");

                Provider.of<Match>(context, listen: false)
                    .changeMatchData(300, 7000);
              },
              child: const Text("add")),
        ],
      ),
    );
  }
}

class Match extends ChangeNotifier {
  int matchNo;
  int runs;

  Match({required this.matchNo, required this.runs});

  void changeMatchData(int matchNo, int runs) {
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
