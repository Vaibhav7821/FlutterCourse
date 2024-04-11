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
  TextEditingController nameController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment3",
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
                  controller: nameController,
                  decoration: InputDecoration(
                      //hintText: "Enter Week Days",
                      labelText: "Enter Your Name",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 255, 0, 0),
                        ),
                      )),
                      validator: (value) {
                            print("In USERNAME VALIDATOR");
          
                            if (value == null || value.isEmpty) {
                              return "Please enter username";
                            } else {
                              return null;
                            }
                          },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 350,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      //hintText: "Enter Week Days",
                      labelText: "Enter Your College",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 255, 0, 0),
                        ),
                      ),
                      ),
                      validator: (value) {
                            print("In USERNAME VALIDATOR");
          
                            if (value == null || value.isEmpty) {
                              return "Please enter username";
                            } else {
                              return null;
                            }
                          },
                      
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {
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
