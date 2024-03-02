
import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment1",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,fontSize: 30,color: Colors.white),),
        backgroundColor: Colors.black,
        actions: const [
          Icon(Icons.favorite_border_outlined,size: 40,color: Colors.white,),
          SizedBox(width: 20,),
          Icon(Icons.message_outlined,size: 40,color: Colors.white,)
        ],
      ),
    );
  }
}
