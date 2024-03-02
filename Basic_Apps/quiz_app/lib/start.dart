import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State createState() => _StartApp();
}

class _StartApp extends State<Start> {
  int _index = 0;
  int _count = 1;
  int _score = 0;
  int _optionIndex = 0;

  List<String> queList = [
    "What does HTML stand for?",
    "Which of the following is the correct way of making a string in Java?",
    "Which of the following is the correct way to use the standard namespace in C++?",
    "What is a correct syntax to output Hello World in Python?",
    "HTML stands for HyperText __________ Language.",
    "Creating an object is called",
    "Which of the following is not a part of the string class?",
    "A ___________ is a collection of classes that we can use when developing programs.",
    "The Keyboard class is part of a package called_________",
    "When a programmer writes a program, the code is known as __________.",
  ];

  List<Map<int, String>> optionList = [
    {
      1: "Hyper Trainer Marking Language",
      2: "Hyper Text Marketing Language",
      3: "Hyper Text Markup Language",
      4: "Hyper Text Markup Leveler",
    },
    {
      1: "String 'Text' ",
      2: "String text = 'text' ",
      3: "String text = 'text' ",
      4: "String text = 'text' "
    },
    {
      1: "Using namespace std",
      2: "Using namespace standard",
      3: "Using standard namespace",
      4: "Standard namespace used",
    },
    {
      1: "Print('hello world')",
      2: "Print('hello world')",
      3: "Printer('hello world')",
      4: "Printing('hello world')",
    },
    {
      1: "Mark-up",
      2: "Marker",
      3: "Markup",
      4: "Marking",
    },
    {
      1: "Instantiation",
      2: "Reference",
      3: "Variable",
      4: "Abstraction",
    },
    {
      1: "CompareTo",
      2: "Length",
      3: "Concat",
      4: "ToString",
    },
    {
      1: "Class",
      2: "Class library",
      3: "Index",
      4: "Object",
    },
    {1: "String", 2: "Cs1", 3: "Random", 4: "Applet"},
    {
      1: "Source code",
      2: "Object code",
      3: "Object module",
      4: "Load module",
    },
  ];

  List<int> ansList = [
    3,
    2,
    1,
    4,
    1,
    3,
    4,
    2,
    1,
    4,
  ];
  int flag = 0;
  void checkAnswer(int option) {
    setState(() {
      answerStatus = List.filled(4, null); // Reset answerStatus
      answerStatus[option] = true; // Mar
      if (ansList[_index] == option && flag == 0) {
        _score++;
        flag = 1;
        answerStatus[option-1] = true;
      }
    });
  }

  List answerStatus = [null,null,null,null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Quiz App",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Questions : $_count / 10",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Score : $_score / 10",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Container(
            color: Colors.grey,
            height: 5,
            width: double.infinity,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    alignment: Alignment.center,
                    height: 150,
                    width: 400,
                    child: Text(queList[_index]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          //MaterialStateProperty.all<Color>(Colors.white),
                          answerStatus[0] == true ? MaterialStateProperty.all<Color>(Colors.green) : answerStatus[0] == false ? MaterialStateProperty.all<Color>(Colors.red) : null,
                        
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(350, 60)), // Change button size
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                          color: Colors.black, // Set border color
                          width: 1.0, // Set border width
                        ),
                      ),
                    ),
                    onPressed: () {
                      checkAnswer(1);
                    },
                    child: Text("${optionList[_optionIndex][1]}"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                          color: Colors.black, // Set border color
                          width: 1.0, // Set border width
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // Change button color
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(350, 60)), // Change button size
                    ),
                    onPressed: () {
                      checkAnswer(2);
                    },
                    child: Text("${optionList[_optionIndex][2]}"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                          color: Colors.black, // Set border color
                          width: 1.0, // Set border width
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // Change button color
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(350, 60)), // Change button size
                    ),
                    onPressed: () {
                      checkAnswer(3);
                    },
                    child: Text("${optionList[_optionIndex][3]}"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                          color: Colors.black, // Set border color
                          width: 1.0, // Set border width
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // Change button color
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(350, 60)), // Change button size
                    ),
                    onPressed: () {
                      checkAnswer(4);
                    },
                    child: Text("${optionList[_optionIndex][4]}"),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _index = _index + 1;
                    _count++;
                    _optionIndex++;
                    flag = 0;

                    if (_count == 11) {
                      _index = 0;
                      _count = 1;
                      _optionIndex = 0;
                      _score = 0;
                    }
                  });
                },
                style: ButtonStyle(
                  side: MaterialStateProperty.all<BorderSide>(
                    const BorderSide(
                      color: Colors.black, // Set border color
                      width: 1.0, // Set border width
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.lightBlue), // Change button color
                  minimumSize: MaterialStateProperty.all<Size>(
                      const Size(60, 40)), // Change button size
                ),
                child: const Text("Next"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
