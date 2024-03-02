import 'package:flutter/material.dart';

Container func1() {
  return Container(
    height: 600,
    width: 20,
    color: Colors.black,
  );
}

Container func2() {
  return Container(
    height: 70,
    width: 250,
    color: Colors.red,
  );
}

Container func3() {
  return Container(
    height: 70,
    width: 250,
    color: Colors.white,
    child: Image.network(
        "https://i.pinimg.com/originals/1a/5e/f9/1a5ef90d510e1e484246dbb6161abd26.png"),
  );
}

Container func4() {
  return Container(
    height: 70,
    width: 250,
    color: Colors.green,
  );
}
