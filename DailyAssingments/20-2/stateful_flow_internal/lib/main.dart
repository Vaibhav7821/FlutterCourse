import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() {
    print("In Create State");
    return _QuizAppState();
  }
}

class SingleQuestionModel {
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const SingleQuestionModel({this.question, this.options, this.answerIndex});
}

class _QuizAppState extends State {
  @override
  void initState() {
    print("init State");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("In didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print("In deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("In dispose");
    super.dispose();
  }

  @override
  void activate() {
    print("In Activate");
    super.activate();
  }

  List questionList = [
    const SingleQuestionModel(
      question: "Who is the founder of Microsoft?",
      options: ["Bill Gates", "Elon Musk", "Jeff Befos", "Lary Page"],
      answerIndex: 0,
    ),
    const SingleQuestionModel(
      question: "Who is the founder of Apple?",
      options: ["Bill Gates", "Elon Musk", "Jeff Befos", "Steve Jobs"],
      answerIndex: 3,
    ),
    const SingleQuestionModel(
      question: "Who is the founder of Amazon?",
      options: ["Bill Gates", "Elon Musk", "Jeff Befos", "Lary Page"],
      answerIndex: 2,
    ),
    const SingleQuestionModel(
      question: "Who is the founder of Google?",
      options: ["Bill Gates", "Elon Musk", "Jeff Befos", "Lary Page"],
      answerIndex: 3,
    ),
    const SingleQuestionModel(
      question: "Who is the founder of Tesla?",
      options: ["Bill Gates", "Elon Musk", "Jeff Befos", "Lary Page"],
      answerIndex: 1,
    ),
  ];

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedIndex != -1) {
      if (buttonIndex == questionList[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Color.fromARGB(255, 0, 255, 8));
      } else if (selectedIndex == buttonIndex) {
        return const MaterialStatePropertyAll(Color.fromARGB(255, 245, 16, 0));
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void checkValidate() {
    if (selectedIndex == -1) {
      return;
    }
    if (selectedIndex != -1) {
      if (questionIndex == questionList.length - 1) {
        isQuestion = false;
        setState(() {
          print("In Set State");
        });
      }
    }
    setState(() {
      questionIndex++;
      selectedIndex = -1;
    });
  }

  int questionIndex = 0;
  int selectedIndex = -1;
  bool isQuestion = true;
  int score = 0;
  int currentIndex = 0;

  Scaffold isQuestionScreen() {
    if (isQuestion) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 207, 199, 199),
        appBar: AppBar(
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.circular(20.0), // Adjust the border radius as needed
            ),
          ),
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
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
                    color: Colors.blueAccent,
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
              height: 50,
            ),
            Text(
              questionList[questionIndex].question,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 34,
              width: 230,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(LinearBorder.bottom()),
                  elevation: MaterialStateProperty.all(30),
                  backgroundColor: checkAnswer(0),
                  side: const MaterialStatePropertyAll(BorderSide(width: 1)),
                ),
                onPressed: () {
                  if (selectedIndex == -1) {
                    setState(() {
                      selectedIndex = 0;
                      if (selectedIndex ==
                          questionList[questionIndex].answerIndex) {
                        score++;
                      }
                    });
                  }
                },
                child: Text(
                  "A.  ${questionList[questionIndex].options[0]}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 34,
              width: 230,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(LinearBorder.bottom()),
                  elevation: MaterialStateProperty.all(30),
                  backgroundColor: checkAnswer(1),
                  side: const MaterialStatePropertyAll(BorderSide(width: 1)),
                ),
                onPressed: () {
                  if (selectedIndex == -1) {
                    setState(() {
                      selectedIndex = 1;
                      if (selectedIndex ==
                          questionList[questionIndex].answerIndex) {
                        score++;
                      }
                    });
                  }
                },
                child: Text(
                  "B.  ${questionList[questionIndex].options[1]}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 34,
              width: 230,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(LinearBorder.bottom()),
                  elevation: MaterialStateProperty.all(30),
                  backgroundColor: checkAnswer(2),
                  side: const MaterialStatePropertyAll(BorderSide(width: 1)),
                ),
                onPressed: () {
                  if (selectedIndex == -1) {
                    setState(() {
                      selectedIndex = 2;
                      if (selectedIndex ==
                          questionList[questionIndex].answerIndex) {
                        score++;
                      }
                    });
                  }
                },
                child: Text(
                  "C.  ${questionList[questionIndex].options[2]}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 34,
              width: 230,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(LinearBorder.bottom()),
                  elevation: MaterialStateProperty.all(30),
                  backgroundColor: checkAnswer(3),
                  side: const MaterialStatePropertyAll(BorderSide(width: 1)),
                ),
                onPressed: () {
                  if (selectedIndex == -1) {
                    setState(() {
                      selectedIndex = 3;
                      if (selectedIndex ==
                          questionList[questionIndex].answerIndex) {
                        score++;
                      }
                    });
                  }
                },
                child: Text(
                  "D.  ${questionList[questionIndex].options[3]}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: checkValidate,
          backgroundColor: const Color.fromARGB(255, 253, 17, 0),
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 207, 199, 199),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        appBar: AppBar(
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.circular(20.0), // Adjust the border radius as needed
            ),
          ),
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: const Color.fromARGB(255, 207, 199, 199),
                  child: Image.network(
                    "https://parspng.com/wp-content/uploads/2022/07/Trophypng.parspng.com-6.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 207, 199, 199),
                  child: const Text(
                    "!! Congratulations !!",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "You Have Successfully Completed The Quiz",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "You Scored \n       $score / ${questionList.length}",
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 137, 106, 12)),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  onPressed: () {
                    setState(() {
                      selectedIndex = -1;
                      questionIndex = 0;
                      isQuestion = true;
                      score = 0;
                    });
                  },
                  child: const Text(
                    "RESET",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
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
