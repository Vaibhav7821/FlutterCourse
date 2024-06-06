import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'result.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State createState() => _QuizScreenState();
}

class _QuizScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 245, 241, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Math Quiz",
                  style: TextStyle(
                    color: Color.fromRGBO(131, 76, 52, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            LinearPercentIndicator(
              barRadius: const Radius.circular(10),
              width: MediaQuery.of(context).size.width - 40,
              animation: true,
              lineHeight: 15.0,
              animationDuration: 2500,
              percent: 1.0,
              center: const Text("100.0%"),
              progressColor: Colors.green,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "12",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "/20",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: const Text(
                "If David’s age is 27 years old in 2011. What was his age in 2003?",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(131, 76, 52, 1),
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.only(left: 20),
                      height: 80,
                      width: 306,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(248, 145, 87, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text(
                        "19 Years",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ));
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Explaination",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(131, 76, 52, 0.8),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 30,
        width: 87,
        decoration: BoxDecoration(
          //color: const Color.fromRGBO(26, 181, 134, 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(26, 181, 134, 1),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Result();
            }));
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "NEXT",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.arrow_right_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
