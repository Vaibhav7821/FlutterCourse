import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            title: const Text(
              "Assignment3",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 70,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1.5,
                            )),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://play-lh.googleusercontent.com/Il1s7VYRV23p_J7m1rS8y96ldviGz0aCF31d_fLN1Yjaa8MrZGaNhqGe7uD7mHvXR2vu",
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 120,
                            margin: const EdgeInsets.only(
                              top: 5,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1.5),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15))),
                            child: const Text(
                              "Core2web",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 120,
                            margin: const EdgeInsets.only(
                              top: 5,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1.5),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15))),
                            child: const Text(
                              "Biencaps",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 120,
                            margin: const EdgeInsets.only(
                              top: 5,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1.5),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15))),
                            child: const Text(
                              "Icubators",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Checkbox(
                        shape: const CircleBorder(
                          side: BorderSide(width: 2),
                        ),
                        value: true,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
