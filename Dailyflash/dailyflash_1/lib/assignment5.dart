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
          backgroundColor: const Color.fromARGB(255, 255, 213, 0),
          centerTitle: true,
          title: const Text(
            "Assigment5",
            style: TextStyle(
              //color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0), 
            ),
          ),
        ),
        body: Center(
          child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 200, 0),
            borderRadius: BorderRadius.all(
              Radius.circular(
                30,
              )
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(10, 10),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ]
          ),
        ),
        ) 
       
      ),  
    );
  }
}