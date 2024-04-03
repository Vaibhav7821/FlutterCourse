import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'database_functions.dart';

class TODOAppUI extends StatefulWidget {
  const TODOAppUI({super.key});
  @override
  State<TODOAppUI> createState() => _TODOAppUIState();
}

class _TODOAppUIState extends State<TODOAppUI> {
  void accessList() async {
    await createDatabase();
    await getCardData();
    setState(() {});
  }

  void updateList() async {
    await getCardData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    accessList();
  }

  ///Text Editing Controllers
  final TextEditingController dateController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void addCard(int index, bool flag) {
    if (flag == true) {
      dateController.text = allCards[index].date.trim();
      titleController.text = allCards[index].title.trim();
      descriptionController.text = allCards[index].description.trim();
    }

    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Create Tasks",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Title",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromARGB(255, 43, 0, 255),
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      TextFormField(
                        controller: titleController,
                        decoration: InputDecoration(
                          hintText: "Enter Title",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
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
                      const SizedBox(height: 15),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromARGB(255, 43, 0, 255),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      TextFormField(
                        controller: descriptionController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "Enter Description",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        validator: (value) {
                          print("In USERNAME VALIDATOR");

                          if (value == null || value.isEmpty) {
                            return "Please enter description";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromARGB(255, 43, 0, 255),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      TextFormField(
                        controller: dateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: "Enter Date",
                          suffixIcon: const Icon(Icons.date_range_rounded),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2025),
                          );
                          String formatedDate =
                              DateFormat.yMMMd().format(pickedDate!);
                          dateController.text = formatedDate;
                        },
                        validator: (value) {
                          print("In USERNAME VALIDATOR");

                          if (value == null || value.isEmpty) {
                            return "Please enter date";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 300,
                  margin: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          13,
                        ),
                      ),
                      backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
                    ),
                    onPressed: () {
                      if (flag == true) {
                        setState(() {
                          allCards[index].title = titleController.text.trim();
                          allCards[index].description =
                              descriptionController.text.trim();
                          allCards[index].date = dateController.text.trim();

                          // cardList.add(ToDoModelClass(
                          //   title: titleController.text,
                          //   description: descriptionController.text,
                          //   date: dateController.text,
                          // ));
                          updateCardInDatabase(allCards[index]);
                          print("submit");
                          //updateList();
                        });
                      } else {
                        if (titleController.text.trim().isNotEmpty &&
                            dateController.text.trim().isNotEmpty &&
                            descriptionController.text.trim().isNotEmpty) {
                          setState(() {
                            // allCards.add(ToDoModelClass(
                            //   id: index,
                            //   title: titleController.text.trim(),
                            //   description: descriptionController.text.trim(),
                            //   date: dateController.text.trim(),
                            // ));
                            insertData(ToDoModelClass(
                              title: titleController.text.trim(),
                              description: descriptionController.text.trim(),
                              date: dateController.text.trim(),
                              checkBox: 0,
                            ));

                            updateList();
                          });
                        }
                      }
                      bool loginValidated = _formKey.currentState!.validate();

                      if (loginValidated) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Task Add Successfully"),
                          ),
                        );
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "Hello",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "Vaibhav",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 35,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(
                      40,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 5,
                      spreadRadius: 8,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ],
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "CREATE TASKS",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(28),
                            topRight: Radius.circular(
                              28,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 10,
                              spreadRadius: 8,
                              color: Color.fromRGBO(192, 185, 185, 1),
                            ),
                          ],
                        ),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: allCards.length,
                          itemBuilder: (context, index) {
                            return Slidable(
                              closeOnScroll: true,
                              endActionPane: ActionPane(
                                extentRatio: 0.2,
                                motion: const DrawerMotion(),
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            addCard(index, true);
                                            updateCardInDatabase(
                                                allCards[index]);
                                            updateList();
                                            setState(() {});
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  89, 57, 241, 1),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              // allCards.remove(index);
                                              deleteCard(allCards[index]);

                                              updateList();
                                            });
                                            setState(() {});

                                            ///deleteCard(index);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(5),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  89, 57, 241, 1),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Icon(
                                              Icons.delete,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              key: ValueKey(index),
                              child: Container(
                                margin: const EdgeInsets.only(top: 15),
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  bottom: 20,
                                  top: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  border: Border.all(
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.05),
                                      width: 0.5),
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(0, 4),
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    )
                                  ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromRGBO(
                                                217, 217, 217, 1),
                                          ),
                                          child:
                                              Image.asset("assets/icon2.jpg"),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        SizedBox(
                                          width: 260,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                allCards[index].title,
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                allCards[index].description,
                                                style: GoogleFonts.inter(
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 0.7),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                allCards[index].date,
                                                style: GoogleFonts.inter(
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 0.7),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Checkbox(
                                        
                                          shape: RoundedRectangleBorder(
                                            
                                            borderRadius:
                                                BorderRadius.circular(10),
                                                
                                          ),
                                          activeColor: const Color.fromARGB(
                                              255, 0, 255, 8),
                                          value: allCards[index].checkBox == 1
                                              ? true
                                              : false,
                                          onChanged: (value) {
                                            print(allCards[index].checkBox);
                                            if (allCards[index].checkBox == 0) {
                                              allCards[index].checkBox = 1;
                                            } else {
                                              allCards[index].checkBox = 0;
                                            }
                                            updateCardInDatabase(
                                                allCards[index]);
                                            setState(() {});
                                            
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        onPressed: () async {
          addCard(-1, false);
          updateList();
          titleController.clear();
          descriptionController.clear();
          dateController.clear();
        },
        child: const Icon(
          size: 50,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
