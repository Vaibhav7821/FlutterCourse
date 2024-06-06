import 'package:flutter/material.dart';

class SharedData extends InheritedWidget {
  final int data;
  const SharedData({super.key, required this.data, required super.child});

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return data != oldWidget.data;
  }
}

class AccessedDataWidget extends StatelessWidget {
  const AccessedDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SharedData sharedDataObj = SharedData.of(context);
    return Row(
      children: [
        Text("${sharedDataObj.data}"),
        const SizedBox(
          height: 50,
        ),
        const AccessDataChild(),
      ],
    );
  }
}

class AccessDataChild extends StatelessWidget {
  const AccessDataChild({super.key});

  @override
  Widget build(BuildContext context) {
    SharedData sharedDataObj =
        context.dependOnInheritedWidgetOfExactType<SharedData>()!;
    return Text("${sharedDataObj.data}");
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const SharedData(
      data:50,
      child: MaterialApp(
        home: CourseDemo(),
      ),
      
    );
  }
}

class CourseDemo extends StatefulWidget {
  const CourseDemo({super.key});

  @override
  State createState() => _CourseDemoState();
}

class _CourseDemoState extends State {
  @override
  Widget build(BuildContext context) {
    SharedData sharedDataObj = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        centerTitle: true,
        title: const Text(
          "Set State Demo",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${sharedDataObj.data}"),
          const SizedBox(
            height: 50,
          ),
          const AccessedDataWidget(),
        ],
      ),
    );
  }
}
