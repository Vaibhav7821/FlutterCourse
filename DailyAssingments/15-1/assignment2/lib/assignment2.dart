import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment2> {
  bool color1Box = false;
  bool color2Box = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Change'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: color1Box ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        color1Box = !color1Box;
                      });
                    },
                    child: 
                    const Text('Box1'),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [

                  Container(
                    height: 100,
                    width: 100,
                    color: color2Box ? Colors.amber : Colors.black,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(
                    onPressed:(){
                      setState(() {
                        color2Box = !color2Box;
                      });
                    } ,
                    child: const Text('Box2'), 
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
