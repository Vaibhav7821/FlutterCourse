import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State createState() => _ResultState();
}

class _ResultState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 245, 241, 1),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Quiz Result",
              style: TextStyle(
                color: Color.fromRGBO(131, 76, 52, 1),
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "Math",
              style: TextStyle(
                color: Color.fromRGBO(131, 76, 52, 1),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 311,
                  width: 334,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(246, 221, 195, 1),
                      borderRadius: BorderRadius.circular(15)),
                ),
                Positioned(
                  
                  child: Container(
                    height: 311,
                    width: 334,
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      "M",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(200, 60, 0, 1),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
