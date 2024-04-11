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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  int _javaCounter = 0;
  int _flutterCounter = 0;

  void _incrementCounter(bool flag) {
    setState(() {
      if (flag) {
        _javaCounter++;
      } else {
        _flutterCounter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: const Text(
            "State Management",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5),
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: GestureDetector(
                    onTap: () {
                      _incrementCounter(true);
                    },
                    child: const Text(
                      "JAVA",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  "$_javaCounter",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5),
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: GestureDetector(
                    onTap: () {
                      _incrementCounter(false);
                    },
                    child: const Text(
                      "FLUTTER",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  "$_flutterCounter",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
