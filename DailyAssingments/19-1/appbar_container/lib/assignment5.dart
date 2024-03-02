import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 30,
                color: Colors.black),
            textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("lib/vaibhav.jpg",width: 100,height: 100,),
            const SizedBox(height: 30,),
            Image.asset("assets/Images/20503845.jpg",width: 100,height: 100,),
          ],
        ),
      ),
    );
  }
}
