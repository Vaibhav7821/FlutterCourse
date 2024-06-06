import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Company extends InheritedWidget {
  String compName;
  int empCount;

  Company(
      {super.key,
      required super.child,
      required this.compName,
      required this.empCount});

  @override
  bool updateShouldNotify(Company oldWidget) {
    return compName != oldWidget.compName || empCount != oldWidget.empCount;
  }

  static Company of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Company>()!;
  }
}