import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';

import 'package:plant_app1/verification.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State createState() => _LoginState();
}

class _LoginState extends State {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 247, 255, 237),
      body: Stack(
        fit: StackFit.expand,
        children: [
          
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Text(
                  "Log in",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 32)),
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 340,
                  margin: const EdgeInsets.only(
                    top: 20,
                    //left: 20,
                  ),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: "Mobile Nunber",
                      hintStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(Icons.phone),
                      prefixIconColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(142, 180, 85, 1),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(142, 180, 85, 1),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 320,
                  margin: const EdgeInsets.only(top: 40, bottom: 30),
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
                          return const Verification();
                        }),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 360,
                  width: 360,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/plant2.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
