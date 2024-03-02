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
          backgroundColor: const Color.fromARGB(255, 0, 4, 255),
          title: const Text(
            "Assignment3",
            style: TextStyle(
              color: Colors.white,
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
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 244, 110),
              border: Border.all(
                color: const Color.fromARGB(255, 0, 0, 0),
                width: 5,
              ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(
                  20,
                )
              )
            ),
          ),
        )
      ),
    );
  }
}
