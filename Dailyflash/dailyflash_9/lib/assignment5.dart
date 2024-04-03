import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Assignment3();
  }
}

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State createState() => _Assignment3State();
}

class _Assignment3State extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool name = false;
  bool phone = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "Assignment5",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              TextField(
                controller: nameController,
                cursorColor: Colors.amber,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: "Enter Name",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: phoneController,
                cursorColor: Colors.amber,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: "Enter Phone",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {
                  displayData();
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              name
                  ? Text(
                      "Name : ${nameController.text}",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )
                  : const Text(""),
              const SizedBox(
                height: 40,
              ),
              phone
                  ? Text(
                      "Phone : ${phoneController.text}",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )
                  : const Text(""),
            ],
          ),
        ),
      ),
    );
  }

  void displayData() {
    name = true;
    phone = true;
    setState(() {});
  }
}
