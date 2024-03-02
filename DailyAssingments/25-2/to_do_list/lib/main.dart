import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => _ToDoList();
}

class _ToDoList extends State {
  List colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
    const Color.fromRGBO(250, 232, 232, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      //width: 200,
                      child: Column(
                        children: [
                          Text(
                            "Create Task",
                            style: GoogleFonts.quicksand(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Title",
                                style: GoogleFonts.quicksand(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                            ],
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Task",
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Description",
                                style: GoogleFonts.quicksand(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                            ],
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Task",
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Date",
                                style: GoogleFonts.quicksand(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                            ],
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Task",
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "SUBMIT",
                              style: GoogleFonts.quicksand(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: const Icon(Icons.add)),
        appBar: AppBar(
          title: Text(
            "To-Do list",
            style: GoogleFonts.quicksand(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: ListView.builder(
            itemCount: colorList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 20,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 20,
                            spreadRadius: 1,
                            color: Color.fromRGBO(0, 0, 0, 0.2)),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: colorList[index],
                    ),
                    width: 400,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(0, 0),
                                        blurRadius: 10,
                                        spreadRadius: 0,
                                        color: Color.fromRGBO(0, 0, 0, 0.07),
                                      ),
                                    ],
                                  ),
                                  height: 52,
                                  width: 52,
                                  margin: const EdgeInsets.only(
                                    bottom: 20,
                                    right: 30,
                                    left: 8,
                                  ),

                                  // child: Image.network(
                                  //   "https://png.pngtree.com/png-vector/20190521/ourlarge/pngtree-gallery-logo-icon-design-template-vector-png-image_1048779.jpg",
                                  //   fit: BoxFit.fill,
                                  // ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 270,
                                  child: Text(
                                    "Lorem Ipsum is simply setting industry. ",
                                    style: GoogleFonts.quicksand(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 270,
                                  child: Text(
                                    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                    style: GoogleFonts.quicksand(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            84, 84, 84, 1)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "21 Feb 2024",
                              style: GoogleFonts.quicksand(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(132, 132, 132, 1),
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.delete,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }));
  }
}
