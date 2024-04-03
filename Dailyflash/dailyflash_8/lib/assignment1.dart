import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 169, 216, 255),
                shape: BoxShape.circle,
              ),
            ),
          ],
          centerTitle: true,
          title: const Text(
            "Assignment1",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: Column(
          children: [

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                            height: 150,
                            width: 150,

                            color: const Color.fromARGB(255, 255, 227, 144),
                          ),
                          Container(
                            height: 150,
                            width: 150,
                            color: const Color.fromARGB(255, 255, 133, 133),
                          ),
                        ],
                      ),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      
                          Expanded(
                            child: Container(
                              //margin: const EdgeInsets.only(top: 30),
                              height: 150,
                              width: 350,
                                                  
                              color: const Color.fromARGB(255, 116, 255, 114),
                            ),
                          ),
                        ],
                      ),

                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                            height: 150,
                            width: 150,

                            color: const Color.fromARGB(255, 206, 146, 255),
                          ),
                          Container(
                            height: 150,
                            width: 150,
                            color: const Color.fromARGB(255, 106, 165, 255),
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
