import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container Style",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),

        /// height,width & color
        // body: Center(
        //   child: Container(
        //     height: 200,
        //     width: 200,
        //     color: const Color.fromARGB(255, 255, 17, 0),
        //   ),
        // ),

        /// padding
        // body: Center(
        //   child: Container(
        //       // padding: const EdgeInsets.symmetric(
        //       //   horizontal: 10,
        //       //   vertical: 10,
        //       // ),
        //       padding: const EdgeInsets.only(
        //           left: 10, right: 10, top: 10, bottom: 10),
        //       height: 100,
        //       width: 100,
        //       color: const Color.fromARGB(255, 0, 140, 255)),
          
          
          /// decoration
          /// 
        //   body: Center (
        //     child : Container(
        //       decoration: BoxDecoration(border: Border.all(
        //         color: const Color.fromARGB(255, 255, 230, 0),
        //         width: 5,
        //       ),
        //       ),
        //       height: 200,
        //       width: 200,
        //     ),
        // ),

        //// border radius and color 
        // body: Center (
        //     child : Container(
        //       decoration: BoxDecoration(
        //         color: const Color.fromARGB(255, 255, 191, 0),
        //         borderRadius: const BorderRadius.all(Radius.circular(20)),
        //         border: Border.all(
        //           color: const Color.fromARGB(255, 2, 141, 255),
        //           width: 5,
        //         ), 
        //       ),
        //       height: 200,
        //       width: 200,
        //     ),
        // ),
           
          //// boxshadow 
        //   body: Center (
        //     child : Container(
        //       height: 200,
        //       width: 200,
        //       decoration: BoxDecoration(
        //         color: const Color.fromARGB(255, 255, 191, 0),
        //         borderRadius: const BorderRadius.all(Radius.circular(20)),
        //         border: Border.all(
        //           color: const Color.fromARGB(255, 2, 141, 255),
        //           width: 5,
        //         ), 
        //         boxShadow: const [
        //           BoxShadow(
        //             color: Colors.purple,offset: Offset(30, 30),blurRadius: 8,
        //           ),
        //            BoxShadow(
        //             color: Colors.red,offset: Offset(20, 20),blurRadius: 8,
        //           ),
        //            BoxShadow(
        //             color: Colors.green,offset: Offset(10, 10),blurRadius: 8,
        //           ),
        //         ],
        //       ),
     
        //     ),
        // ),

        //// gradient 
        ///
         body: Center (
            child : Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 191, 0),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: const Color.fromARGB(255, 2, 141, 255),
                  width: 5,
                ),
                gradient: const LinearGradient(
                  stops: [0.3,0.5],
                  colors: [Color.fromARGB(255, 255, 17, 0),Color.fromARGB(255, 0, 255, 8)],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
