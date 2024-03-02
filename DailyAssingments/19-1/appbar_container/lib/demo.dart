import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container with Border'),
        ),
        body: const Center(
          child: ContainerWithBorder(),
        ),
      ),
    );
  }
}

class ContainerWithBorder extends StatelessWidget {
  const ContainerWithBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello, Border!',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
