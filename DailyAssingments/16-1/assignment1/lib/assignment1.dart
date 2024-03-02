import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  List<int> _list = [121, 145, 153, 323];

  int? _palindromeCount = 0;
  int? _armStrongCount = 0;
  int? _strongCount = 0;

  int _countPalindrome() {
    int? count = 0;
    for (int i = 0; i < _list.length; i++) {
      int temp = _list[i];

      int rev = 0;
      while (temp != 0) {
        rev = rev * 10 + temp % 10;
        temp = temp ~/ 10;
      }

      if (rev == _list[i]) {
        count = count! + 1;
      }
    }
    return count!;
  }

  int _countArmstrong() {
    int? count = 0;

    for (int i = 0; i < _list.length; i++) {
      int temp = _list[i];
      int sum = 0;
      int digitCount = 0;

      while (temp != 0) {
        digitCount = digitCount + 1;
        temp = temp ~/ 10;
      }
      temp = _list[i];

      while (temp != 0) {
        int pro = 1;
        for (int i = 1; i <= digitCount; i++) {
          int rem = temp % 10;
          pro = pro * rem;
        }
        sum = sum + pro;
        temp = temp ~/ 10;
      }
      if (sum == _list[i]) {
        count = count! + 1;
      }
    }
    return count!;
  }

  int _countStrong() {
    int? count = 0;
    for (int i = 0; i < _list.length; i++) {
      int temp = _list[i];
      int sum = 0;

      while (temp != 0) {
        int rem = temp % 10;
        int pro = 1;
        for (int j = 2; j <= rem; j++) {
          pro = pro * j;
        }
        sum = sum + pro;
        temp = temp ~/ 10;
      }
      if (sum == _list[i]) {
        count = count! + 1;
      }
    }
    return count!;
  }

  void palindrome() {
    setState(() {
      int count = _countPalindrome();
      _palindromeCount = count;
    });
  }

  void armstrong() {
    setState(() {
      int count = _countArmstrong();
      _armStrongCount = count;
    });
  }

  void strong() {
    setState(() {
      int count = _countStrong();
      _strongCount = count;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Numbers',
            style: TextStyle(fontSize: 40), textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("List = $_list",style: TextStyle(fontSize: 40),),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 70,
                  ),

                  Text(
                    "Palindrome Count",
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "$_palindromeCount",
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  ElevatedButton(
                    onPressed: palindrome,
                    child: const Text("Palindrome")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
