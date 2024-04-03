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
            "Assignment1",
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 13, 255),
                  Color.fromARGB(255, 199, 0, 234)
                ],
                begin: Alignment.centerLeft,
                stops: [0, 0.4],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 255, 0, 0),
                  offset: Offset(9, 9),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
