import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text(
            "Container",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                gradient: const RadialGradient(radius: 0.8, colors: [
                  Colors.yellow,
                  Colors.orange,
                ]),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.orange,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 145, 0),
                    //color: Color.fromARGB(255, 255, 128, 0),
                    blurRadius: 20,
                    spreadRadius: 15,
                  ),
                ],
              ),
              //alignment: Alignment.center,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZRm_FgZGAsLuBS8J11pQEDs0Q6JmDochlfngwvj7Zs0aZlmffXi4VDgvnmXaE8E0BM_M&usqp=CAU"),
              )),
        ),
      ),
    );
  }
}
