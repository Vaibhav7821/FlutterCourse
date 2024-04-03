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
              "Assignment5",
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
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title 1',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Give Some Description here ?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 52,
                        width: 52,
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://play-lh.googleusercontent.com/Il1s7VYRV23p_J7m1rS8y96ldviGz0aCF31d_fLN1Yjaa8MrZGaNhqGe7uD7mHvXR2vu",
                          ),
                        ),
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
