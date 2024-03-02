import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => _ToDoListState();
}

class ToDoModelClass {
  String title;
  String description;
  String date;

  ToDoModelClass({
    required this.title,
    required this.description,
    required this.date,
  });
}

class _ToDoListState extends State {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<ToDoModelClass> cardList = [
    ToDoModelClass(
      title: "Lorem Ipsum is simply setting industry. ",
      description:
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      date: "26 Feb, 2024",
    ),
  ];
  List colorlist = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
    const Color.fromRGBO(250, 232, 232, 1),
  ];

  void addCard(int index, bool flag) {
    if (flag == true) {
      dateController.text = cardList[index].date.trim();
      titleController.text = cardList[index].title.trim();
      descriptionController.text = cardList[index].description.trim();
    }

    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            //height: 400,
            //width: 200,

            child: Container(
              margin: const EdgeInsets.all(18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Create Task",
                    style: GoogleFonts.quicksand(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Title",
                        style: GoogleFonts.quicksand(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      TextField(
                        controller: titleController,
                        decoration: const InputDecoration(
                          hintText: "Enter Title",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      TextField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
                          hintText: "Enter Description",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      TextField(
                        readOnly: true,
                        // onTap: () async {
                        //   DateTime? pickedDate = await showDatePicker(
                        //     context: context,
                        //     initialDate: DateTime.now(),
                        //     firstDate: DateTime(2024),
                        //     lastDate: DateTime(2025),
                        //   );
                        //   String formatDate =
                        //     DateFormat.yMMMd().format(pickedDate!);

                        //   setState(() {
                        //     dateController.text = formatDate;
                        //   });
                        //},
                        controller: dateController,
                        decoration: InputDecoration(
                          hintText: "Enter Date",
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2024),
                                lastDate: DateTime(2025),
                              );
                              String formatDate =
                                  DateFormat.yMMMd().format(pickedDate!);

                              setState(() {
                                dateController.text = formatDate;
                              });
                            },
                            child: const Icon(
                              Icons.calendar_month_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 139, 148, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      onPressed: () {
                        if (flag == true) {
                          setState(() {
                            cardList[index].title = titleController.text.trim();
                            cardList[index].description =
                                descriptionController.text.trim();
                            cardList[index].date = dateController.text.trim();
                            // cardList.add(ToDoModelClass(
                            //   title: titleController.text,
                            //   description: descriptionController.text,
                            //   date: dateController.text,
                            // ));
                          });
                        } else {
                          if (titleController.text.trim().isNotEmpty &&
                              dateController.text.trim().isNotEmpty &&
                              descriptionController.text.trim().isNotEmpty) {
                            setState(() {
                              cardList.add(ToDoModelClass(
                                title: titleController.text.trim(),
                                description: descriptionController.text.trim(),
                                date: dateController.text.trim(),
                              ));
                            });
                          }
                        }
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.inter(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  bool flag = false;

  Scaffold isToDoScreen() {
    if (flag) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text(
            "To-do list",
            style: GoogleFonts.quicksand(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.circular(20.0), // Adjust the border radius as needed
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: cardList.length,
            itemBuilder: (context, index) {
              return Container(
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
                        color: Color.fromRGBO(0, 0, 0, 0.4)),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: colorlist[index % colorlist.length],
                ),
                width: 330,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                //borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                boxShadow: [
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
                                  bottom: 20, right: 30, left: 8),
                              // child: Image.asset("profile.png"),
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/profile.png"),
                                // backgroundImage: NetworkImage(
                                //   "https://w7.pngwing.com/pngs/833/374/png-transparent-computer-icons-article-website-content-writer-publishing-search-engine-optimization-others-miscellaneous-angle-search-engine-optimization-thumbnail.png",

                                // ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 270,
                              child: Text(
                                cardList[index].title,
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
                                cardList[index].description,
                                style: GoogleFonts.quicksand(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(84, 84, 84, 1)),
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
                          cardList[index].date,
                          style: GoogleFonts.quicksand(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(132, 132, 132, 1),
                          ),
                        ),
                        const Spacer(),
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: const Icon(
                        //     Icons.edit,
                        //     color: Color.fromRGBO(0, 139, 148, 1),
                        //   ),
                        // ),
                        GestureDetector(
                          //onTap: deleteCard(cardList, index),
                          onTap: () {
                            addCard(index, true);
                          },
                          child: const Icon(
                            Icons.edit,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              cardList.removeAt(index);
                            });

                            ///deleteCard(index);
                          },
                          child: const Icon(
                            Icons.delete,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        // IconButton(
                        //   onPressed: () {
                        //     //deleteCard(cardList, index);
                        //   },
                        //   icon: const Icon(
                        //     Icons.delete,
                        //     color: Color.fromRGBO(0, 139, 148, 1),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addCard(-1, false);
            titleController.clear();
            descriptionController.clear();
            dateController.clear();
          },
          backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
          child: const Text(
            "Add",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
          ),
        ),
      );
    } else {
      flag = true;
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text(
            "To-do list",
            style: GoogleFonts.quicksand(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.circular(20.0), // Adjust the border radius as needed
            ),
          ),
        ),
        body: Column(
          
          //mainAxisAlignment: MainAxisAlignment.
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/home2.webp",
                  
                  fit: BoxFit.fill,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 40,
                  ),
                    height: 50,
                    width: 250,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 139, 148, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      onPressed: (){
                        setState(() {
                          
                        });
                      },
                      child: Text(
                        "Get Started ->",
                        style: GoogleFonts.inter(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isToDoScreen();
  }
}
