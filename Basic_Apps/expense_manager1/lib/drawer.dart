import 'package:expense_manager1/graphs.dart';
import 'package:expense_manager1/trash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'category.dart';
import 'transaction.dart';

Drawer showDrawer(BuildContext context) {
  
  bool transaction = true;
  
  bool graph = false;
  bool category = false;
  bool trash = false;
  bool about = false;
  return Drawer(
    
    backgroundColor: const Color.fromARGB(255, 239, 236, 236),
    width: 280,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Expense Manager",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Save all your transactions",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Transaction();
                }));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                    color: transaction ? Colors.lightGreenAccent : Colors.white,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.home,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Transaction",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Graph();
                }));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                height: 50,
                width: 170,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.graphic_eq,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Graphs",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Category1();
                }));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                    color: category ? Colors.lightGreenAccent : Colors.white,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.category,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Category",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Trash();
                }));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                height: 50,
                width: 170,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.delete,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Trash",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              width: 170,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(45),
                      bottomRight: Radius.circular(45))),
              child: Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Icons.person,
                    color: Color.fromRGBO(14, 161, 125, 1),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "About us",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}
