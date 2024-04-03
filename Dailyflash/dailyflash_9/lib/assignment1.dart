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
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            title: const Text(
              "Assignment1",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        width: 1.5,
                      ),
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }
}
