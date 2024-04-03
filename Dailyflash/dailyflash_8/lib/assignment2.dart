import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment2(),
    );
  }
}

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State createState() => _Assignment2State();
}

class _Assignment2State extends State {
  List imgList = [

    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStZ5uQeMnLJxTzUZRIQe_rObUoqW_TAq-Hjw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFypw0Dwzf39sN8kx3_EONyNvcJxwncZkyQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj3i2TXFGmSnpqqlg28q4aONH7fP7rnqG7ug&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6Gd4WIo8xBGVFbCndqrhF5iPvl4xGoqc3gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/imagesq=tbn:ANd9GcTS3-OlrDAwBSAGJ1a6HflQScOdwx0JPRn4pQ&usqp=CAU",
  ];
  List foodList = [
    "BURGER",
    "PIZZA",
    "SAMOSA",
    "SANDWICH",
    "PEPSI",
    "VADAPAV"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 147, 224, 255),
        centerTitle: true,
        title: const Text(
          "Assignment2",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 300,
                          height: 400,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStZ5uQeMnLJxTzUZRIQe_rObUoqW_TAq-Hjw&usqp=CAU",
                            // width: double.infinity,
                            fit: BoxFit.fill
                            // height: double.infinity,
                          
                          ),
                        ),
                        const Text(
                          "Pizza",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 300,
                          height: 400,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFypw0Dwzf39sN8kx3_EONyNvcJxwncZkyQg&usqp=CAU",
                            // width: double.infinity,
                                                      fit: BoxFit.fill
                
                            // height: double.infinity,
                          ),
                        ),
                        const Text(
                          "Samosa",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                         const SizedBox(
                      width: 20,
                    ),

                
                    Column(
                      children: [
                        SizedBox(
                          width: 300,
                          height: 400,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj3i2TXFGmSnpqqlg28q4aONH7fP7rnqG7ug&usqp=CAU",
                            //  width: double.infinity,
                                                      fit: BoxFit.fill
                
                            //   height: double.infinity,
                          ),
                        ),
                        const Text(
                          "Sandwich",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                         const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 300,
                          height: 400,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj3i2TXFGmSnpqqlg28q4aONH7fP7rnqG7ug&usqp=CAU",
                            //  width: double.infinity,
                                                      fit: BoxFit.fill
                
                            //   height: double.infinity,
                          ),
                        ),
                        const Text(
                          "Sandwich",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                        const SizedBox(
                      width: 20,
                    ),
                    
                    Column(
                      children: [
                        SizedBox(
                          width: 300,
                          height: 400,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6Gd4WIo8xBGVFbCndqrhF5iPvl4xGoqc3gg&usqp=CAU",
                            //  width: double.infinity,
                                                      fit: BoxFit.fill
                
                            //   height: double.infinity,
                          ),
                        ),
                        const Text(
                          "Burger-Pepsi",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
