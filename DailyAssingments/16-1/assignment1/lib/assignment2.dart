import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  List<int> list = [121, 145, 153, 323];

  int? _palindromeCount = 0;
  int? _armStrongCount = 0;
  int? _strongCount = 0;
  

  int _countPalindrome() {
    int? count = 0;

    for (int i = 0; i < list.length; i++) {
      int temp = list[i];

      int rev = 0;
      while (temp != 0) {
        rev = rev * 10 + temp % 10;
        temp = temp ~/ 10;
      }

      if (rev == list[i]) {
        count = count! + 1;
      }
    }
    return count!;
  }

  int _countArmstrong() {
    int? count = 0;

    for (int i = 0; i < list.length; i++) {
      int temp = list[i];
      int sum = 0;
      int digitCount = 0;

      while (temp != 0) {
        digitCount = digitCount + 1;
        temp = temp ~/ 10;
      }
      temp = list[i];

      while (temp != 0) {
        int pro = 1;
        for (int i = 1; i <= digitCount; i++) {
          int rem = temp % 10;
          pro = pro * rem;
        }
        sum = sum + pro;
        temp = temp ~/ 10;
      }
      if (sum == list[i]) {
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

  int _countStrong() {
    
    int? count = 0;
    for (int i = 0; i < list.length; i++) {
      int temp = list[i];
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
      if (sum == list[i]) {
        count = count! + 1;
      }
    }
    return count!;
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
        title: const Text(
          '**********************Palindrome Number*****************',
        ),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(
              //   width: 50,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('List of Numbers : $list'),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      Text(
                        "$_palindromeCount",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: palindrome,
                        child: const Text("Palidrome"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      Text(
                        "$_armStrongCount",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: armstrong,
                        child: const Text("Armstrong"),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      Text(
                        "$_strongCount",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: strong,
                        child: const Text("Strong"),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
