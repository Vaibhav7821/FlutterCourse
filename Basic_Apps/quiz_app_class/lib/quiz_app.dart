import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  bool isQuestion = true;
  int questionIndex = 0;

  List<Map> questionList = [
    {
      "question": "Who is the founder of Microsoft",
      "options": ["Bill Gates", "Elon Musk", "Jeff Befos", "Lary Page"],
      "answer": 0,
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Bill Gates", "Elon Musk", "Jeff Befos", "Steve Jobs"],
      "answer": 3,
    },
    {
      "question": "Who is the founder of Amazon?",
      "options": ["Bill Gates", "Elon Musk", "Jeff Befos", "Lary Page"],
      "answer": 2,
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Bill Gates", "Elon Musk", "Jeff Befos", "Lary Page"],
      "answer": 3,
    },
    {
      "question": "Who is the founder of Tesla?",
      "options": ["Bill Gates", "Elon Musk", "Jeff Befos", "Lary Page"],
      "answer": 1,
    },
  ];

  List changeColor = [false, false, false, false];
  bool click = true;

  int score = 0;

  void checkAnswer(int selectedIndex) {
    (click)
        ? setState(() {
            if (selectedIndex == questionList[questionIndex]["answer"]) {
              if (selectedIndex == 0) {
                changeColor[0] = true;
              } else if (selectedIndex == 1) {
                changeColor[1] = true;
              } else if (selectedIndex == 2) {
                changeColor[2] = true;
              } else if (selectedIndex == 3) {
                changeColor[3] = true;
              }
              score++;
            } else {
              changeColor[questionList[questionIndex]["answer"]] = true;
              changeColor[selectedIndex] = null;
            }
            click = false;
          })
        : () {};
  }

  Scaffold isQuestionScreen() {
    if (isQuestion) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1} / ${questionList.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Score : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "$score / ${questionList.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              questionList[questionIndex]["question"],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50),
                backgroundColor: changeColor[0] == true
                    ? Colors.green
                    : changeColor[0] == false
                        ? Colors.white
                        : Colors.red,
              ),
              onPressed: () {
                checkAnswer(0);
              },
              child: Text(
                "A. ${questionList[questionIndex]["options"][0]}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50),
                backgroundColor: changeColor[1] == true
                    ? Colors.green
                    : changeColor[1] == false
                        ? Colors.white
                        : Colors.red,
              ),
              onPressed: () {
                checkAnswer(1);
              },
              child: Text(
                "B. ${questionList[questionIndex]["options"][1]}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50),
                backgroundColor: changeColor[2] == true
                    ? Colors.green
                    : changeColor[2] == false
                        ? Colors.white
                        : Colors.red,
              ),
              onPressed: () {
                checkAnswer(2);
              },
              child: Text(
                "C. ${questionList[questionIndex]["options"][2]}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50),
                backgroundColor: changeColor[3] == true
                    ? Colors.green
                    : changeColor[3] == false
                        ? Colors.white
                        : Colors.red,
              ),
              onPressed: () {
                checkAnswer(3);
              },
              child: Text(
                "D. ${questionList[questionIndex]["options"][3]}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              questionIndex++;
              click = true;
              changeColor = [false, false, false, false];

              if (questionIndex == questionList.length) {
                isQuestion = false;
              }
            });
          },
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "CONGRATULATIONS !!!!",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Score : ",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$score / ${questionList.length}",
              style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  questionIndex = 0;
                  changeColor = [false, false, false, false];
                  click = true;
                  isQuestion = true;
                  score = 0;
                });
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
