import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Profile'),
      ),
      body: Column(
        children: [
         const SizedBox(
            height: 10,
          ),
          Center(
              child: Image.network('https://i1.sndcdn.com/avatars-000376961768-jcr6qj-t240x240.jpg',
            height: 300,
            width: 300,
          )),
      const    SizedBox(
            height: 10,
          ),
       const   Text( 
            'NAME:xyz',
            style: TextStyle(
                fontSize: 40, color: Colors.pink, fontWeight: FontWeight.bold),
          ),
         
        ],
      ),
    );
  
  }
}