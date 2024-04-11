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
  bool seenPass = true;
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
      body: Center(
        child: Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: TextField(
            //textAlign: TextAlign.center,
            obscureText: seenPass ? true : false,
            decoration: InputDecoration(
              suffixIcon: IconButton(
            icon: Icon(
              seenPass ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                seenPass = !seenPass;
              });
            },
              ),
              hintText: "Enter Password",
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
