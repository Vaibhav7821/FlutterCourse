import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class SharedData extends InheritedWidget {
  const SharedData({super.key, required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    SharedData obj = SharedData.dependOnInheritedWidgetOfExactType()!;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedData();
  }
}
