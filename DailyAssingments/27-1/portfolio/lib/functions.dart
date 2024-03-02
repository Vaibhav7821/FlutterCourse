import 'package:flutter/material.dart';

Row name() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        width: 150,
      ),
      Text(
        "Name : Vaibhav Navanath Gawali",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Row myImg() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 170,
        width: 170,
        child: Image.asset(
        "assets/IMG_20231103_133802.jpg",
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}

Row clgname() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        width: 150,
      ),
      Text(
        "College : Sinhgad [SITS]",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Row clgLogo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 200,
        width: 200,
        child: Image.network(
          "https://nbnstic.sinhgad.edu/wp-content/uploads/2022/11/Sinhgad-Institutes-custom-1024x671.png",
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}

Row compName() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        width: 150,
      ),
      Text(
        "Dream Company : Microsoft",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Row compLogo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 170,
        width: 170,
        child: Image.network(
          "https://www.logodesignlove.com/wp-content/uploads/2012/08/microsoft-logo-01.jpeg",
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}
