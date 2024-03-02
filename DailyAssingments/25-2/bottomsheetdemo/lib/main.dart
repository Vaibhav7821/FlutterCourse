import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bootom Sheet"),
        ),
        // body: SingleChildScrollView(
        //   child: Container(
        //     height: 600,
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 400,
                  //width: 200,
                  child: Column(
                    children: [
                      const Text(
                        "Create Task",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Task",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("SUBMIT"),
                      ),
                    ],
                  ),
                );
              });
            },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
