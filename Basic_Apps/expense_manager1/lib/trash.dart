import 'package:expense_manager1/drawer.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<StatefulWidget> createState() => _TrashState();
}

class _TrashState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: showDrawer(context),
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 70,
                width: double.infinity,
                //margin: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.remove_circle,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Medicine",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "500",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 16)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 65,
                        ),
                        SizedBox(
                          width: 251,
                          // height: 20,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: 10)),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: Text(
                            "3 June | 11:50 AM",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: 10)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 1),
            ],
          );
        },
      ),
    );
  }
}
