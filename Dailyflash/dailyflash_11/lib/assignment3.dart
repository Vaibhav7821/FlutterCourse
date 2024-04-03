import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment1(),
    );
  }
}

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});
  @override
  State createState() => _Assignment1State();
}

class _Assignment1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment3",
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
          height: 60,
          width: 350,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 191, 0),
              borderRadius: BorderRadius.circular(15)),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Enter Your Name",
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
