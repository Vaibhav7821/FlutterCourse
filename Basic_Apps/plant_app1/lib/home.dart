import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'detailscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 255, 237),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 100),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Find your \nfavorite plants",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24)),
                        ),
                        const Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(left: 33),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 16.1,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.shopping_bag,
                            color: Color.fromRGBO(62, 102, 24, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 110, // Fixed height for the PageView
                      width: MediaQuery.of(context).size.width,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 108,
                            width: 310,
                            margin: const EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(204, 231, 185, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          print("Heloo ");
                                          return const DetailScreen();
                                        }),
                                      );
                                    },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, top: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "30% OFF",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 26)),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "02-23 April",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 120,
                                    width: 200,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/plant3.png'),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                ],
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
                    const SizedBox(
                      height: 15,
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
                    Text(
                      "Indoor",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20)),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 188, // Fixed height for the ListView
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 188,
                                  width: 141,
                                  margin: const EdgeInsets.only(right: 20),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Color.fromRGBO(0, 0, 0, 0.06),
                                        offset: Offset(0, 8),
                                        spreadRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          print("Heloo ");
                                          return const DetailScreen();
                                        }),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 180,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/plant4.png'),
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Snake Plants",
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          48, 48, 48, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "₹350",
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          62, 102, 24, 1),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17)),
                                            ),
                                            const Spacer(),
                                            const Icon(
                                              Icons.shopping_bag,
                                              color: Color.fromRGBO(
                                                  62, 102, 24, 1),
                                            ),
                                            const SizedBox(
                                              width: 10,
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
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Outdoor",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20)),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 188, // Fixed height for the ListView
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 188,
                                  width: 141,
                                  margin: const EdgeInsets.only(right: 20),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Color.fromRGBO(0, 0, 0, 0.06),
                                        offset: Offset(0, 8),
                                        spreadRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          print("Heloo ");
                                          return const DetailScreen();
                                        }),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 180,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/plant4.png'),
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Snake Plants",
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          48, 48, 48, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "₹350",
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          62, 102, 24, 1),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17)),
                                            ),
                                            const Spacer(),
                                            const Icon(
                                              Icons.shopping_bag,
                                              color: Color.fromRGBO(
                                                  62, 102, 24, 1),
                                            ),
                                            const SizedBox(
                                              width: 10,
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
                        ),
                      ],
                    ),
                    Text(
                      "Indoor",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20)),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 188, // Fixed height for the ListView
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 188,
                                  width: 141,
                                  margin: const EdgeInsets.only(right: 20),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Color.fromRGBO(0, 0, 0, 0.06),
                                        offset: Offset(0, 8),
                                        spreadRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          print("Heloo ");
                                          return const DetailScreen();
                                        }),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 180,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/plant4.png'),
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Snake Plants",
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          48, 48, 48, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "₹350",
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          62, 102, 24, 1),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17)),
                                            ),
                                            const Spacer(),
                                            const Icon(
                                              Icons.shopping_bag,
                                              color: Color.fromRGBO(
                                                  62, 102, 24, 1),
                                            ),
                                            const SizedBox(
                                              width: 10,
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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
