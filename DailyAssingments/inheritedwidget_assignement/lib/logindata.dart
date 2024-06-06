import 'package:flutter/material.dart';
import 'package:inheritedwidget_assignement/inheritedwidget.dart';
import 'employeeinfo.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  
  @override
  State createState() => _LoginState();
}

class _LoginState extends State {
  TextEditingController empIdController = TextEditingController();
  TextEditingController empNameController = TextEditingController();
  TextEditingController empUserNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          "Employee Login",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                controller: empIdController,
                decoration: InputDecoration(
                    hintText: "Enter Employee Id",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                controller: empNameController,
                decoration: InputDecoration(
                    hintText: "Enter Employee Name",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                controller: empUserNameController,
                decoration: InputDecoration(
                    hintText: "Enter Employee Username",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                EmployeeData obj = EmployeeData.of(context);
                obj.empObj.empId = int.parse(empIdController.text);
                obj.empObj.empName = empNameController.text;
                obj.empObj.empUserName = empUserNameController.text;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const EmployeeInfo();
                    },
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
