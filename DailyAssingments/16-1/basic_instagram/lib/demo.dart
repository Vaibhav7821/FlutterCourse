import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Circular Person Icon Example'),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.black12,
            child: Icon(
              Icons.person_outline_sharp,
              size: 40,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
