import 'dart:async';
import 'package:flutter/material.dart';

import 'package:foodapp/login.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    login();
  }

  void  login () async  { 
    Timer (const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LogIn()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.lightBlue],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child:const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.food_bank,
              size: 80,
              color: Colors.white,
            ),
            Text(
              'Food APP',
              style: TextStyle(
                fontFamily: "NotoSerif-Italic",
                fontSize: 30,
                color: Colors.white, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
