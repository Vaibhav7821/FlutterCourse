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
            return ReservedSeat(studentName: "Sakshi", seatNo: 18);
          },
        ),
        ChangeNotifierProvider(create: (context) {
          return UnReservedSeat(studentName: "Vaibhav", seatNo: 20);
        }),
      ],
      child: const MaterialApp(
        home: Library(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State createState() => _LibraryState();
}

class _LibraryState extends State {
  @override
  Widget build(BuildContext context) {
    log("In Library build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Library"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer2<ReservedSeat, UnReservedSeat>(
              builder: (context, value, value2, child) {
                log("In Consumer2");
                return Column(
                  children: [
                    //Text(value.playerName),
                    const Text(
                      "Reserved Member",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                        "Student Name : ${Provider.of<ReservedSeat>(context).studentName}"),
                    const SizedBox(
                      height: 30,
                    ),
                    // Text("${value.jerNo}"),
                    Text(
                        "Seat No : ${Provider.of<ReservedSeat>(context).seatNo}"),
                    const SizedBox(
                      height: 30,
                    ),
                    // Text("${value2.matchNo}"),
                    const Text(
                      "UnReserved Member",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                        "Studetn Name : ${Provider.of<UnReservedSeat>(context).studentName}"),
                    const SizedBox(
                      height: 30,
                    ),
                    // Text("${value2.runs}"),
                    Text(
                        "Seat No : ${Provider.of<UnReservedSeat>(context).seatNo}"),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<UnReservedSeat>(context, listen: false)
                      .changeData(22);
                },
                child: const Text("Next day"))
          ],
        ),
      ),
    );
  }
}

class UnReservedSeat with ChangeNotifier {
  String studentName;
  int seatNo;

  UnReservedSeat({required this.studentName, required this.seatNo});

  void changeData(int seatNo) {
    log("In Change data ");
    this.seatNo = seatNo;
    log("On next day Seat No is changed");
    notifyListeners();
  }
}

class ReservedSeat {
  String studentName;
  int seatNo;

  ReservedSeat({required this.studentName, required this.seatNo});
}
