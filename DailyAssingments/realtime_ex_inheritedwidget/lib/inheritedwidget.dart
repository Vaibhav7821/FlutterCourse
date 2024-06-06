import 'package:flutter/material.dart';

import 'main.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key,});

  @override
  createState() => _SecondPage();
}

class _SecondPage extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGcolor.of(context).colour,
      appBar: AppBar(
        title: const Text("Real-time Example"),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,
          ),
          child: GestureDetector(
            onTap: () {
              // final currentColor = BGcolor.of(context).colour;
              // final newColor =
                  // currentColor == Colors.white ? Colors.black : Colors.white;
              // setState(() {
              //   BGcolor.of(context).setColorValue(newColor);
              // });
            },
            child: const Center(
              child: Text("Change BackgroundColor",
                  style: TextStyle(color: Colors.red)),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FirstPage()));
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}