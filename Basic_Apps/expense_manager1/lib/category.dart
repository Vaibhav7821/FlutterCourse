import 'package:expense_manager1/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'showdialogbox.dart';

class Category1 extends StatefulWidget {
  const Category1({super.key});
  @override
  State createState() => _CategoryState();
}

class _CategoryState extends State {
  List images = [
    "assets/food.png",
    "assets/fuel.png",
    "assets/medicine.png",
    "assets/shopping.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 20, // spacing between rows
          crossAxisSpacing: 20, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onLongPress: () {
              showMyDialog(context);
            },
            child: Container(
              alignment: Alignment.center,
              height: 150,
              width: 145,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.circular(14)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 8,
                    spreadRadius: 0,
                    offset: Offset(1, 2),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 74,
                    width: 74,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        images[index],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Food",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
      floatingActionButton: SizedBox(
        height: 46,
        width: 166,
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: -10,
              offset: Offset(0, 10),
            )
          ],
          ),

          child: FloatingActionButton.extended(
            onPressed: () {
              showSheet();
            },
            backgroundColor: Colors.white,
            label: const Text('Add Category'),
            icon: Container(
                height: 32,
                width: 32,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(14, 161, 125, 1),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ),
        ),
      ),
      drawer: showDrawer(context),
    );
  }

  final TextEditingController urlController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void showSheet() {
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
                Container(
                  height: 74,
                  width: 74,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(140, 128, 128, 0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/category_img.png",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Add",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Text(
                        "Image URL",
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
                        controller: urlController,
                        //maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "Enter URL",
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
                            return "Please enter URL";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Category",
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
                        controller: categoryController,
                        decoration: InputDecoration(
                          hintText: "Enter Category name",
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
                        onTap: () async {},
                        validator: (value) {
                          print("In USERNAME VALIDATOR");

                          if (value == null || value.isEmpty) {
                            return "Please enter Categroy";
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
                      backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                    ),
                    onPressed: () {
                      urlController.clear();
                      categoryController.clear();
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Add",
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
}
