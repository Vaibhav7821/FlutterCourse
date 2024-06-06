

import 'package:flutter/material.dart';

import 'inheritedwidget.dart';

void main() {
  runApp(const MainApp());
}
bool flag = false;
class BGcolor extends InheritedWidget {
  final Color colour;
  //final Function(Color) setColor;

  const BGcolor({
    super.key,
    //required this.setColor,
    required this.colour,
    required super.child,
  });

  @override
  bool updateShouldNotify(BGcolor oldWidget) {
    //return colour != oldWidget.colour;
    return true;
  }

  static BGcolor of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BGcolor>()!;
  }

  // void setColorValue(Color newColor) {
  //   setColor(newColor);
  // }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const BGcolor(
      colour: Colors.blue,
      // setColor: (newColor) {
      //   log('New color: $newColor');
      // },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  createState() => _FirstPage();
}

class _FirstPage extends State {
  //bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: flag ? Colors.red : Colors.white,
      appBar: AppBar(
        title: const Text("Real-time Example"),
      ),
      body: const Center(
        child: MyWidget(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SecondPage(),
            ),
          );
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  createState() => _MyWidget();
}

class _MyWidget extends State {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        flag = !flag;
        // final currentColor = BGcolor.of(context).colour;
        // final newColor =
        //     currentColor == Colors.white ? Colors.black : Colors.white;
        // log('Current color: $currentColor, New color: $newColor');
        setState(() {
          
        });
        // setState(() {
        //   BGcolor.of(context).setColorValue(newColor);
        // });
      },
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        child: const Center(
          child: Text(
            "Change BackgroundColor",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
