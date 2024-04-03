import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:resume_creator/main.dart';
import 'package:resume_creator/signup_page.dart';

import 'loginPage_database.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}
bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  bool isValidPassword(String value) {
    // Password should have at least 4 characters
    if (value.length < 4) return false;

    // Password should contain at least one alphabet and one digit
    if (!RegExp(r'^(?=.?[a-zA-Z])(?=.?[0-9])').hasMatch(value)) return false;

    // Password should contain at least one special character
    if (!RegExp(r'^(?=.?[!@#$%^&()_+}{:;"?><,./\[\]\\\\-])').hasMatch(value)) {
      return false;
    }

    return true;
  }

  //SNACKBAR CODE
  _showErrorSnackBar(String content,BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
      ),
    );
  }

class _LoginPageState extends State<LoginPage> {
  bool forgotClick = false;
  bool registerClick = false;
  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  

  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  Future<void> startingSetup() async {
    //await createDatabase();
    //await getCardDetailsList();
  }

  @override
  void initState() {
    super.initState();
    startingSetup();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              //height: double.infinity,
              height: screenSize.height,
              width: screenSize.width,
              color: const Color.fromRGBO(234, 219, 215, 1),
              // child: Image.asset(
              //   'lib/image/loginbg.jpg',
              //   fit: BoxFit.fill,
              // ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: screenSize.height / 8,
                // ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(
                    top: 70,
                    left: 30,
                    bottom: 70,
                  ),
                  // decoration: const BoxDecoration(
                  //   color: Color.fromRGBO(137, 0, 255, 1),
                  //   boxShadow: [
                  //     BoxShadow(
                  //         spreadRadius: 250,
                  //         blurRadius: 1000,
                  //         color: Color.fromRGBO(137, 0, 255, 1),
                  //         offset: Offset(0, 0)),
                  //   ],
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: GoogleFonts.quicksand(
                            //color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "Login back into your account",
                        style: GoogleFonts.quicksand(
                            color: const Color.fromARGB(255, 111, 115, 165),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 525,
                  //width: double.maxFinite,
                  margin: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 111, 115, 165),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        //topRight: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 5,
                          blurRadius: 10,
                          color: Color.fromARGB(255, 44, 42, 42),
                          offset: Offset(0, 10)),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 60,
                    ),
                    child: Form(
                      key: _loginKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Text(
                                  "Log In",
                                  style: GoogleFonts.quicksand(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,

                                    // color:
                                    //     const Color.fromRGBO(137, 0, 255, 1)
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Text(
                          //   "User Id",
                          //   style: GoogleFonts.quicksand(
                          //     fontSize: 15,
                          //     color: Color.fromARGB(255, 255, 255, 255),
                          //     fontWeight: FontWeight.w600,
                          //   ),
                          // ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: TextFormField(
                              cursorColor: Colors.white,
                              statesController: MaterialStatesController(),
                              maxLines: null,
                              controller: emailController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                labelText: "E-mail",

                                labelStyle:
                                    GoogleFonts.quicksand(color: Colors.white),
                                //hintText: "Enter Title",
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  // borderRadius:
                                  //     BorderRadius.all(Radius.circular(15)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  //borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  //borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter an email id';
                                } else if (!isValidEmail(value)) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                          ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          // Text(
                          //   "Password",
                          //   style: GoogleFonts.quicksand(
                          //     fontSize: 15,
                          //     color: const Color.fromRGBO(137, 0, 255, 1),
                          //     fontWeight: FontWeight.w600,
                          //   ),
                          // ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 40,
                            ),
                            child: TextFormField(
                              statesController: MaterialStatesController(),
                              maxLines: null,
                              controller: pwdController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                labelText: "Password",
                                labelStyle:
                                    GoogleFonts.quicksand(color: Colors.white),
                                //hintText: "Enter Title",
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  // borderRadius:
                                  //     BorderRadius.all(Radius.circular(15)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  // borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  //borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                }
                                if (isValidPassword(value)) {
                                  return 'Enter at least 4 , one alphabet,\n one digit, and one special character';
                                }
                                return null;
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (forgotClick == false) {
                                      forgotClick = true;
                                    } else {
                                      forgotClick = false;
                                    }
                                  });
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      color: (forgotClick)
                                          ? Colors.green
                                          : const Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () async {
                              //CHECK AUTHENTICATION OF USER
                              if (await loginAuthentication(
                                  emailController.text.trim(),
                                  pwdController.text.trim())) {
                                //USER IS AUTHENTICATED AND TRUSTED
                                emailController.clear();
                                pwdController.clear();

                                //THIS CODE PUSH MAIN HOME PAGE OF TODOLIST APP
                                // ignore: use_build_context_synchronously
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const ToDoList();
                                }));
                                -_showErrorSnackBar("Login Successful! \n",context);
                              } else {
                                _showErrorSnackBar(
                                  "Login Unsuccessful! \nPlease Enter Valid Data.",context
                                );
                                print("LOGIN NOT SUCCESSFUL");
                              }
                              setState(() {});
                            },
                            child: Container(
                              height: 45,
                              //width: 380,
                              margin: const EdgeInsets.only(
                                bottom: 5,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.quicksand(
                                    color: const Color.fromARGB(
                                        255, 111, 115, 165),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (registerClick == false) {
                                      registerClick = true;
                                    } else {
                                      registerClick = false;
                                    }
                                    emailController.clear();
                                    pwdController.clear();
                                    //THIS CODE USE TO PUSH THE CREATE ACCOUNT SCREEN
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return const SignUpPage();
                                    }));
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      "Don't have an account yet? ",
                                      style: GoogleFonts.quicksand(
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Text(
                                      "Join Now ",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          //const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
