import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateless App",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                  Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                  Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                    Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                    Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ],)
          ],
        ),
      ),
    );
  }
}
