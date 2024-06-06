import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyAppData extends ChangeNotifier {
  String name;
  int age;

  MyAppData({required this.name, required this.age});

  void changeData() {
    name = "Sagar";
    age = 22;
    notifyListeners();
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    log("In MYAPP BUILD");

    return ChangeNotifierProvider<MyAppData>(
      create: (context) {
        return MyAppData(
          name: "Vaibhav",
          age: 20,
        );
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  @override
  Widget build(BuildContext context) {
    log("In HOMEPAGE BUILD");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "ChangeNotifierProvider",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: MyInfo(),
      ),
    );
  }
}

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State createState() => _MyInfoState();
}

class _MyInfoState extends State {
  @override
  Widget build(BuildContext context) {
    log("In MYINFO BUILD");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "My Info",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          Provider.of<MyAppData>(context).name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "${Provider.of<MyAppData>(context).age}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<MyAppData>(context, listen: false).changeData();
          },
          child: const Text(
            "Change Data",
          ),
        ),
        const ShowData(),
      ],
    );
  }
}

class ShowData extends StatefulWidget {
  const ShowData({super.key});

  @override
  State createState() => _ShowDataState();
}

class _ShowDataState extends State {
  @override
  Widget build(BuildContext context) {
    
    log("In SHOWDATA BUILD");
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Provider.of<MyAppData>(context).name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),

      ],
    );
  }
}
