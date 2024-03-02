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
      home: Assignment5(),
    );
  }
}

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State {
  bool colorBox = true;
  bool textBox = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        title: const Text(
          "Assignment5",
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
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 100),
              shape: const BeveledRectangleBorder(
                side: BorderSide.none,
              ),
              backgroundColor:colorBox
                ? const Color.fromARGB(255, 255, 0, 0)
                : const Color.fromARGB(255, 34, 0, 255),
            ),
            onPressed: () {
              print("Hello");
              setState(() {
                colorBox = !colorBox;
                textBox = !textBox;
              });
            },
            child: textBox
                ? const Text(
                    "Click me!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                : const Text(
                    "Hello Vaibhav",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
