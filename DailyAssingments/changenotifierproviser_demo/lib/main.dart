import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN MYAPP BUILD");
    return ChangeNotifierProvider(
        create: (context) {
          return Match(matchNo: 100, runs: 8000);
        },
        child: const MaterialApp(
          home: MatchSummary(),
          debugShowCheckedModeBanner: false,
        ));
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
    log("IN MATCHSUMMARY BUILD");
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangeNotifier Demo"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: const Center(
        child: MatchData(),
      ),
    );
  }
}

class MatchData extends StatefulWidget {
  const MatchData({super.key});

  @override
  State createState() => _MatchDataState();
}

class _MatchDataState extends State {
  @override
  Widget build(BuildContext context) {
    log("IN MATCHDATA BUILD");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${Provider.of<Match>(context).matchNo}"),
        const SizedBox(
          height: 30,
        ),
        Text("${Provider.of<Match>(context).runs}"),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              Provider.of<Match>(context, listen: false).changeData(200, 90000);
            },
            child: const Text("Change")),
        const NormalClass(),
      ],
    );
  }
}

class NormalClass extends StatelessWidget {
  const NormalClass({super.key});
  @override
  Widget build(BuildContext context) {
    log("IN NORMALCLASS BUILD");
    return Text("${Provider.of<Match>(context).runs}");
    //return Text("Hello NormalClass ");
  }
}

class Match extends ChangeNotifier {
  int matchNo;
  int runs;

  Match({required this.matchNo, required this.runs});

  void changeData(int matchNo, int runs) {
    this.matchNo = matchNo;
    log("CHANGE DATA SUCCESSFULLY");
    this.runs = runs;
    notifyListeners();
  }
}
