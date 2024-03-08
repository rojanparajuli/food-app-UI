import 'package:flutter/material.dart';
import 'package:foodapp/login.dart';

class Registered extends StatefulWidget {
  const Registered({super.key});

  @override
  State<Registered> createState() => _RegisteredState();
}

class _RegisteredState extends State<Registered> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Food APP.jpg', // Replace with your asset path
              width: 150,
              height: 150,
            ),
          const  SizedBox(height: 20),
      const      Text(
              'Thank You for Registering!',
              style:  TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "NotoSerif-Italic",
              ),
            ),
         const   SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LogIn()));
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}


  
