import 'package:flutter/material.dart';
import 'resumeHome.dart';
import 'databaseConnection.dart';

class ResumePDF extends StatefulWidget {
  const ResumePDF({super.key});

  @override
  State createState() => ResumeState();
}

class ResumeState extends State<ResumePDF> {
  Future updateListPdf() async {
    await retriveData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    updateListPdf();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Resume",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          height: 640,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(2)),
              color: const Color.fromARGB(255, 183, 204, 216),
              border: Border.all(width: 1),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(
                      255,
                      150,
                      147,
                      147,
                    ),
                    offset: Offset(0, 10),
                    spreadRadius: 7,
                    blurRadius: 10)
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: const Color.fromARGB(255, 62, 107, 133)),
                    color: const Color.fromARGB(255, 74, 132, 166),
                  ),
                  child: const Text("Personal Details :",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 22,
                      child: Text(
                        "Name : ${mapEntry[pdfIndex].name}",
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 22,
                      child: Text(
                        "Email Id : ${mapEntry[pdfIndex].email}",
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 22,
                      child: Text(
                        "Contact No : ${mapEntry[pdfIndex].contactNo}",
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                /*####################################################################################################*/
                Container(
                  height: 30,
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: const Color.fromARGB(255, 62, 107, 133)),
                    color: const Color.fromARGB(255, 74, 132, 166),
                  ),
                  child: const Text("Educational Details :",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 22,
                      child: Text(
                        "Name : ${mapEntry[pdfIndex].tenth}",
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 22,
                      child: Text(
                        "Email Id : ${mapEntry[pdfIndex].twelveth}",
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: const Color.fromARGB(255, 62, 107, 133)),
                    color: const Color.fromARGB(255, 74, 132, 166),
                  ),
                  child: const Text("Skill & Experties :",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 22,
                      child: Text(
                        "Programming skills : ${mapEntry[pdfIndex].pSkills}",
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 22,
                      child: Text(
                        "Soft Skills : ${mapEntry[pdfIndex].sSkills}",
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 22,
                      child: Text(
                        "Projects: ${mapEntry[pdfIndex].projects}",
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
