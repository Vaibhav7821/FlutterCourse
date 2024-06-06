import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'quizscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi Pamela,",
                      style: TextStyle(
                        color: Color.fromRGBO(131, 76, 52, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Great to see you again!",
                      style: TextStyle(
                        color: Color.fromRGBO(131, 76, 52, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(250, 188, 154, 1),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 700,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 80,
                    width: 306,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 237, 217, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: ListTile(
                      leading: Container(
                        height: 45,
                        width: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: const Text(
                          "M",
                          style: TextStyle(
                            color: Color.fromRGBO(200, 60, 0, 1),
                          ),
                        ),
                      ),
                      subtitle: const Text(
                        "Math",
                        style: TextStyle(
                          color: Color.fromRGBO(131, 76, 52, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_right,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const QuizScreen();
                        }));
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
