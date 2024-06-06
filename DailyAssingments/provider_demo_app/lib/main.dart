import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class Company {
  String companyName;
  int empCount;

  Company({required this.companyName, required this.empCount});
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return Company(companyName: "Biencaps", empCount: 20);
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CompanyHome(),
      ),
    );
  }
}

class CompanyHome extends StatefulWidget {
  const CompanyHome({super.key});

  @override
  State createState() => _CompanyHomeState();
}

class _CompanyHomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Provider Demo",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: CompanyData(),
      ),
    );
  }
}

class CompanyData extends StatefulWidget {
  const CompanyData({super.key});

  @override
  State createState() => _CompanyDataState();
}

class _CompanyDataState extends State {
  void changeData() {
    setState(() {
      Provider.of<Company>(context,listen: false).companyName = "Incubators";
      Provider.of<Company>(context,listen: false).empCount = 30;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Company Info",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          Provider.of<Company>(context).companyName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "${Provider.of<Company>(context).empCount}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              changeData();
            },
            child: const Text(
              "Change Data",
            ))
      ],
    );
  }
}
