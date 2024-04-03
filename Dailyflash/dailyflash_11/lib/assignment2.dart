
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
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment2",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SizedBox(
          height: 70,
          width: 350,
   
          child: TextField(
            onTap: () {
              setState(() {
                isTap = true;
              });
            },
            decoration: InputDecoration(
              suffixIcon: Row(
                children: [
                  const Spacer(),
                  isTap ? const Icon(Icons.search) : const Icon(null),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.lock),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              hintText: "Enter Input",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                color: Color.fromARGB(255, 0, 255, 8),
              )),
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 17, 0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
