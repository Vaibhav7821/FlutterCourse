import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Portfolio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State createState() => _PortfolioState();
}

class _PortfolioState extends State {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _collegController = TextEditingController();

  bool flag = false;

  List objectList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Assignment4",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0), // Adjust the border radius as needed
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: 350,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: TextField(
                controller: _nameController,

                //focusNode: _nameFocusNode,
                decoration: InputDecoration(
                  hintText: "Enter Your name",
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 1.5,
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 1.5,
                      color: Color.fromARGB(255, 93, 0, 255),
                    ),
                  ),
                ),
                cursorColor: Colors.amber,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  print("Value = $value");
                },
                onSubmitted: (value) {
                  print("DATA SUBMITTED = $value");
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: 350,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: TextField(
                controller: _collegController,
                //focusNode: _nameFocusNode,
                decoration: InputDecoration(
                  hintText: "Enter College name",
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 1.5,
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 1.5,
                      color: Color.fromARGB(255, 93, 0, 255),
                    ),
                  ),
                ),
                cursorColor: Colors.amber,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  print("Value = $value");
                },
                onSubmitted: (value) {
                  print("DATA SUBMITTED = $value");
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              onPressed: () {
                setState(() {
                  objectList.add(
                    DisplayPortfolio(
                        name: _nameController.text,
                        collegeName: _collegController.text),
                  );
                  _collegController.clear();
                  _nameController.clear();
                });
              },
              child: const Text(
                "SUBMIT",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: objectList.length,
                itemBuilder: (context, index) {
                  return viewPortfolio(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container viewPortfolio(int index) {
    //if (flag == true) {
    return Container(
      margin: const EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(border: Border.all(width: 1.5)),
      height: 150,
      width: 330,
      child: Text(
        "Your Name : ${objectList[index].name} \n\nCollege Name : ${objectList[index].collegeName}",
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
    //} else {
    //return Container();
    //}
  }
}

class DisplayPortfolio {
  String name = "";
  String collegeName = "";
  String compName = "";

  DisplayPortfolio({required this.name, required this.collegeName});
}
