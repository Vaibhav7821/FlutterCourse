import 'package:flutter/material.dart';

import 'company.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Company(
        compName: "Google",
        empCount: 200,
        child: const MaterialApp(
          home: Display(),
        ));
  }
}

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State createState() => _Display();
}

class _Display extends State {
  @override
  Widget build(BuildContext context) {
    Company obj = Company.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Data"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Details(),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  print("setStte");
                  print(obj.empCount);
                  obj.empCount++;
                  obj.compName = "NVIDIA";
                });
              },
              child: const Text("Change Details"))
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    Company obj = Company.of(context);
    return Column(
      children: [
        Text(
          "CompName : ${obj.compName}",
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          "EmpCount : ${obj.empCount}",
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
