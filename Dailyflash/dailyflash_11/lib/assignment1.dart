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
          "Assignment1",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter Input",
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Color.fromARGB(255, 0, 255, 8),
            )),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 17, 0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
