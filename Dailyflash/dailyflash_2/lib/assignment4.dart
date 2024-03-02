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
          backgroundColor: const Color.fromARGB(255, 0, 255, 85),
          title: const Text(
            "Assignment4",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 300,
            padding: const EdgeInsets.all(
              20,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 191, 255, 220),
              border: Border.all(
                color: const Color.fromARGB(255, 0, 255, 21),
                width: 2,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  20,
                ),
                bottomRight: Radius.circular(
                  20,
                )
              )
            ),
            child: const Text(
              "Hello Vaibhav !!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        )
      ),
    );
  }
}
