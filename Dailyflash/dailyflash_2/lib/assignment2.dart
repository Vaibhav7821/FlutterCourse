import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 238, 0, 255),
          title: const Text(
            "Assignment2",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 238, 0, 255),
              border: Border(
                left: BorderSide(
                  color: Colors.black,
                  width: 5,
                ),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )
            ),
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Dailyflash",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ),
    );
  }
}
