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
          "Assignment4",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 350,
              child: TextField(
                maxLength: 20,
                decoration: InputDecoration(
                  // hintText: "Enter Your Name",
                  labelText: "Enter Your Name",
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
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Text(
            //       "0/20",
            //     ),
            //     SizedBox(
            //       width: 40,
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
