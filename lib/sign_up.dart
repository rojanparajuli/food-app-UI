import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {


  
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Food APP.jpg"), 
            fit: BoxFit.cover,
          ),
        ),
        child: TextFormField(
          controller: _emailControllerSignup,

         
        ),
    ),
        );
  }
}