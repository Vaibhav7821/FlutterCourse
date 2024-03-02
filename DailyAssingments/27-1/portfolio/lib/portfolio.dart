import 'package:flutter/material.dart';
import 'functions.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int _counter = -1;

  void _nextMove() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _nextMove,
        child: const Text("Next")
      ),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          "Portfolio",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
// #########################################
            const SizedBox(
              height: 20,
            ),
            (_counter >= 0) ? name() : const Row(),

            const SizedBox(
              height: 20,
            ),
            (_counter >= 1) ? myImg() : const Row(),
 
// ##############################################
           const SizedBox(
              height: 20,
            ),
            (_counter>=2) ? clgname() : const Row(),
            const SizedBox(
              height: 20,
            ),
            (_counter>=3) ? clgLogo() : const Row(),

// ####################################
            const SizedBox(
              height: 20,
            ),
            (_counter>=4) ? compName() : const Row(),
            const SizedBox(
              height: 20,
            ),
             (_counter>=5) ? compLogo() : const Row(),
          ],
        ),
      ),
    );
  }
}
