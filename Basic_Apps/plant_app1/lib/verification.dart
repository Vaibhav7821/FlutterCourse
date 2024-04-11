import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'login.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State createState() => _VerificationState();
}

class _VerificationState extends State {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 255, 237),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                    setState(() {
                      const Login();
                    });
                    print("Vaibhav");
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 28,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      Text(
                        " Verification",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 25)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "  Enter the OTP code from the phone we \n  just sent you.",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontWeight: FontWeight.w400,
                                fontSize: 14)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 56, // Fixed height for the ListView
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 56,
                                width: 56,
                                margin: const EdgeInsets.only(left: 33),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 110, 155, 112),
                                    width: 1,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 20,
                                      color: Color.fromRGBO(0, 0, 0, 0.6),
                                      offset: Offset(0, 8),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border:
                                        InputBorder.none, // Removes the border
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
                    height: 30,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          children: [
                            const TextSpan(text: '  Don’t receive OTP code! '),
                            TextSpan(
                              text: 'Resend',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ),
                          ],
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
                          backgroundColor:
                              const Color.fromARGB(255, 75, 122, 31)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            print("Heloo ");
                            return const Home();
                          }),
                        );
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
