// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:carbonccap/auth/login.dart';

void main() {
  runApp(CarbonCap());
}

class CarbonCap extends StatelessWidget {
  const CarbonCap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Super Admin CarbonCap",
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Login() ,
    );
  }
}
