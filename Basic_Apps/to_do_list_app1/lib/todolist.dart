import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => _ToDoListState();
}

class _ToDoListState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 29,
              top: 45,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning",
                  style: GoogleFonts.quicksand(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Vaibhav",
                  style: GoogleFonts.quicksand(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              //height: 300,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                top: 30,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "CREATE TO DO LIST",
                    style: GoogleFonts.quicksand(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //height: 612,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.only(top: 40),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Container(
                              //height: 100,
                              width: 200,
                              margin: const EdgeInsets.only(
                                top: 10,
                                left: 10,
                                right: 10,
                              ),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                //color: Colors.blue,
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 0,
                                    blurRadius: 20,
                                    offset: Offset(0, 4),
                                    color: Color.fromRGBO(0, 0, 0, 0.8),
                                  ),
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 52,
                                    width: 52,
                                    margin: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      //color: Color.fromRGBO(217, 217, 217, 1)
                                      shape: BoxShape.circle,
                                    ),
                                    child: const CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        "https://i.pinimg.com/originals/31/14/5e/31145e7925e59e8fb344f13422435dba.jpg",
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        child: Text(
                                          "Lorem Ipsum is simply dummy industry.",
                                          style: GoogleFonts.quicksand(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            //height: 20,
                                            width: 250,
                                            child: Text(
                                              "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ",
                                              style: GoogleFonts.quicksand(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      SizedBox(
                                        child: Text(
                                          "10 July 2023",
                                          style: GoogleFonts.quicksand(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
