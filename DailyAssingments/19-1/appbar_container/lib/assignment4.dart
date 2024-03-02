import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Hello Core2Web",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,fontSize: 30,color: Colors.black),textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
     
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
            ),
          ],
        ), 
      ),
    );
  }
}
