import 'package:flag/functions.dart';
import 'package:flutter/material.dart';

class Flag extends StatefulWidget {
  const Flag({super.key});

  @override
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  int _counter = -1;
  void _increment(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indian Flag"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.grey,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    (_counter>=0) ? func1() : Container(),
                  ],
                ),
                Column(
                  children: [
                    (_counter>=1) ? func2() : Container(),
                    (_counter>=2 ? func3() : Container()),
                    (_counter>=3 ? func4() : Container()),
            
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
