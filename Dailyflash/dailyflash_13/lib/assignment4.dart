import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment1(),
    );
  }
}

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});
  @override
  State createState() => _Assignment1State();
}

class _Assignment1State extends State {
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  String? emailValidationError;

  void validateEmail() {
    if (_formKey.currentState!.validate()) {
      final email = emailController.text.trim();
      if (!email.endsWith('@gmail.com')) {
        setState(() {
          emailValidationError = 'Email must end with @gmail.com';
        });
      } else if (email.contains(' ')) {
        setState(() {
          emailValidationError = 'Email must not contain spaces';
        });
      } else {
        // Email is valid, do something
        print('Email is valid: $email');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 4",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 60,
                width: 350,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Enter Phone',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter phone number';
                    }

                    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                      return 'Please enter a valid 10-digit phone number';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                height: 60,
                width: 350,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Enter Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email address';
                    }
                    // Check if email ends with @gmail.com
                    if (!value.trim().endsWith('@gmail.com')) {
                      return 'Email must end with @gmail.com';
                    }
                    // Check if email contains any spaces
                    if (value.contains(' ')) {
                      return 'Email must not contain spaces';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    validateEmail;
                    //Navigator.of(context).pop();
                    bool loginValidated = _formKey.currentState!.validate();
                  },
                  child: const Text(
                    "Submit",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
