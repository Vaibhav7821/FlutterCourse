import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column[center,end]"),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
               Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
               Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
      ),
    );
  }
}
