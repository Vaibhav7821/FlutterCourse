


import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment2",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,fontSize: 30,color: Colors.black),textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: const [
          Icon(Icons.audio_file_outlined,size: 30,color: Colors.black,),
          SizedBox(width: 20,),
          Icon(Icons.menu,size: 30,color: Colors.black,)
        ],
      ),
    );
  }
}
