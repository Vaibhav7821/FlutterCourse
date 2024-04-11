import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State createState() => _GetStartedState();
}

class _GetStartedState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 249, 249),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 520,
                width: 360,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/plant1.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 34.22,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  children: [
                    const TextSpan(text: 'Enjoy your \nlife with '),
                    TextSpan(
                      text: 'Plants',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 34.22)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.all(30),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          13,
                        ),
                      ),
                      backgroundColor: const Color.fromARGB(255, 75, 122, 31)),
                  onPressed: () {},
                  child: Text(
                    "Get Started  ->",
                    style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
