import 'package:expense_manager1/drawer.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<StatefulWidget> createState() => _GraphState();
}

class _GraphState extends State {
  Map<String, double> data = {
    "Food": 20,
    "Fuel": 40,
    "Medicine": 10,
    "Entertainment": 40,
    "Shopping": 50,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: showDrawer(context),
      appBar: AppBar(
        title: Text(
          "Graphs",
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          children: [
            PieChart(
              dataMap: data,
              animationDuration: const Duration(milliseconds: 2000),
              chartType: ChartType.ring,
              chartRadius: 200,
              ringStrokeWidth: 35,
              centerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12)),
                  ),
                  Text(
                    "₹ 2550.00",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15)),
                  ),
                ],
              ),
              chartValuesOptions:
                  const ChartValuesOptions(showChartValues: false),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            SizedBox(
              height: 320,
              width: 320,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                          right: 20, left: 15),
                                      child:
                                          Image.asset("assets/medicine.png")),
                                  Row(
                                    children: [
                                      Text(
                                        "Medicine",
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    "₹ 650.00",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontSize: 16)),
                                  ),
                                  Text(
                                    "  >",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontSize: 10)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 50, right: 50),
              child: Row(
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 16)),
                  ),
                  const Spacer(),
                  Text(
                    "₹ 2,550.00",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 16)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
