import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  int? _count = 0;

  void _incrementCounter() {
    setState(() {
      _count = _count! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '****************Counter App*******************',
          // mainAxisAlignment: MainAxisAlignment.center,

          style: TextStyle(fontSize: 50),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter value tapped!!',
              style: TextStyle(fontSize: 50),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "$_count",
              style: const TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
