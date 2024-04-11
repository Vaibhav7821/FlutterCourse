import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State createState() => _DetailScreenState();
}

class _DetailScreenState extends State {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 255, 237),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const SizedBox(
                  height: 40,
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                   Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 28,
                  ),
                ),
                SizedBox(
                  height: 280, // Fixed height for the PageView
                  width: MediaQuery.of(context).size.width,

                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 250,
                        width: 250,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/plant5.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      );
                    },
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(4, (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: _currentPage == index ? 10.0 : 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index
                              ? const Color.fromRGBO(62, 102, 24, 1)
                              : const Color.fromRGBO(197, 214, 181, 1)),
                    );
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: 450,
                  margin: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Snake Plants",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 24)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Plansts make your life with minimal and \nhappy love the plants more and enjoy life.",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14)),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 220,
                    width: 340,
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(118, 152, 75, 1),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Height",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14)),
                                ),
                                Text(
                                  "30cm-40cm",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Temprature",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14)),
                                ),
                                Text(
                                  "20’C-25’C",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Pot",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14)),
                                ),
                                Text(
                                  "Ciramic Pot",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11)),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Total Price",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14)),
                                ),
                                Text(
                                  "₹ 350",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20)),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 160,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(103, 133, 74, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.shopping_bag,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Add to cart",
                                    style: GoogleFonts.rubik(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
