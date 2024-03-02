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
          backgroundColor: const Color.fromRGBO(255, 227, 66, 1),
          centerTitle: true,
          leading: const Icon(
            Icons.menu_book_outlined,           
          ),
          title: const Text(
            "Assigment1",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          actions: const [
            Icon(
              Icons.notification_add_outlined,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
        
    );
  }
}