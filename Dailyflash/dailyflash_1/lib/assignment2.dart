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
          backgroundColor: const Color.fromARGB(255, 66, 242, 255),
          centerTitle: true,
          leading: const Icon(
            Icons.home_outlined,
          ),
          actions: const [
            Icon(
              Icons.notifications_none_outlined,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.add_alert,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.movie_edit,
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
