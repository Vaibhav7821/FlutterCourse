import 'package:expense_manager1/home.dart';
import 'package:expense_manager1/signup.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager1/transaction.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<StatefulWidget> createState() => _SignInState();
}

class _SignInState extends State {
  TextEditingController nameController = TextEditingController();

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/splashImage.png"),
                ],
              ),
              Expanded(
                child: Container(
                  height: 500,
                  width: 320,
                  margin: const EdgeInsets.only(bottom: 30),
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Login to your Account",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                      offset: Offset(0, 3),
                                      color: Color.fromRGBO(0, 0, 0, 0.15)),
                                ]),
                            child: TextFormField(
                              controller: userController,
                              cursorColor: Colors.yellow,
                              decoration: InputDecoration(
                                  hintText: "Username",
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                      offset: Offset(0, 3),
                                      color: Color.fromRGBO(0, 0, 0, 0.15)),
                                ]),
                            child: TextFormField(
                              controller: passController,
                              cursorColor: Colors.yellow,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(14, 161, 125, 1),
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return const Home();
                                  }));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(14, 161, 125, 1),
                                ),
                                child: Text(
                                  "Sign In",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)),
                                )),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?  ",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const SignUp();
                              }));
                            },
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color.fromRGBO(14, 161, 125, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12)),
                            ),
                          )
                        ],
                      ),
                    ],
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
