import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Indian Flag'),
          centerTitle: true,
        ),

        body: SizedBox(
          height: double.infinity,
          width: double.infinity,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
       
            children: [

              Row(
                children: [
                  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 500,
                        width: 10,
                        color: Colors.brown,
                        
                      ),
                    ],
                  ),
      
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 200,
                        color: Colors.red,
                        foregroundDecoration: BoxDecoration(border: Border.all(width: 1)),
                      ),
                        Container(
                        height: 40,
                        width: 200,
                        color: Colors.white,
                        foregroundDecoration: const BoxDecoration(border: Border.symmetric(vertical:BorderSide(width: 1))),
                        child: Image.network("https://i.pinimg.com/originals/1a/5e/f9/1a5ef90d510e1e484246dbb6161abd26.png"),

                      ),
                        Container(
                        height: 40,
                        width: 200,
                        color: Colors.green,
                        foregroundDecoration: BoxDecoration(border: Border.all(width: 1)),

                      ),
                      const SizedBox(
                        height: 370,
                      ),
                    ],
                  ),
                ],
              ),
        
       
              
            ],
            ),
          ),
        ),
      );
    }
}
