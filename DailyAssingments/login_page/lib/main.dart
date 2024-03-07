import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  State createState() => _LoginPageState();
}

class _LoginPageState extends State {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String username = "Vaibhav.123";
  String password = "1234";
  bool usernameBorder = true;
  bool passBorder = true;
  bool isLogin = true;

  Scaffold isLoginPage() {
    if (isLogin) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 166, 0, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text(
            "Login Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ]),
            Container(
              padding: const EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        " Username",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),

                  /// username textfield
                  TextField(
                    controller: userNameController,
                    cursorColor: Colors.amber,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter username",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: usernameBorder
                          ? OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.purple,
                              ),
                            )
                          : OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  usernameBorder
                      ? const Row()
                      : const Row(
                          children: [
                            Text(
                              "  please enter correct username",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        " Password",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),

                  // password textfiewld

                  TextField(
                    controller: passwordController,
                    cursorColor: Colors.amber,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter password",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: passBorder
                          ? OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.purple,
                              ),
                            )
                          : OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  passBorder
                      ? const Row()
                      : const Row(
                          children: [
                            Text(
                              "  please enter correct password",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 50,
                    ),
                    height: 40,
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {
                          checkValidate();
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(300, 40),
                          backgroundColor:
                              const Color.fromARGB(255, 166, 0, 255),
                        ),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 166, 0, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text(
            "Login Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                // ignore: unnecessary_const
                const Text(
                  " Hello",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " ${userNameController.text}",
                  style: const TextStyle(
                    color: Colors.purple,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            const Text(
              "     Login \nSuccessful !!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoginPage();
  }

  void checkValidate() {
    if (userNameController.text == username &&
        passwordController.text == password) {
      setState(() {
        isLogin = false;
      });
    } else {
      if (userNameController.text != username) {
        setState(() {
          usernameBorder = false;

          userNameController.clear();
        });
      } else {
        setState(() {
          usernameBorder = true;
        });
      }
      if (passwordController.text != password) {
        setState(() {
          passBorder = false;

          passwordController.clear();
        });
      } else {
        setState(() {
          passBorder = true;
        });
      }
    }
  }
}
