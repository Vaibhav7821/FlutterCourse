import 'package:flutter/material.dart';
import 'package:inheritedwidget_assignement/empmodel.dart';

class EmployeeData extends InheritedWidget {
  final Employee empObj;

  const EmployeeData({
    super.key,
    required this.empObj,
    required super.child,
  });

  @override
  bool updateShouldNotify(EmployeeData oldWidget) {
    return (empObj.empId != oldWidget.empObj.empId ||
        empObj.empName != oldWidget.empObj.empName ||
        empObj.empUserName != oldWidget.empObj.empUserName);
  }

  static EmployeeData of(BuildContext context) {

    return context.dependOnInheritedWidgetOfExactType<EmployeeData>()!;
  }
}
