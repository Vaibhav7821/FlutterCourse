import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Email Validation',
      home: EmailValidationScreen(),
    );
  }
}

class EmailValidationScreen extends StatefulWidget {
  const EmailValidationScreen({super.key});

  @override
  _EmailValidationScreenState createState() => _EmailValidationScreenState();
}

class _EmailValidationScreenState extends State<EmailValidationScreen> {
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
          "Assignment2",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: validateEmail,
                child: const Text('Submit'),
              ),
              if (emailValidationError != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    emailValidationError!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
