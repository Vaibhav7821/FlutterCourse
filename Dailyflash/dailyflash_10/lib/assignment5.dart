import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Assignment5",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 13, 255),
                  Color.fromARGB(255, 199, 0, 234),
                  Color.fromARGB(255, 0, 255, 8)
                ],
                begin: Alignment.centerLeft,
                stops: [0.1, 0.3, 1],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 255, 0, 0),
                  offset: Offset(7, 7),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
