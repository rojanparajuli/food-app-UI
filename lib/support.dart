import 'package:flutter/material.dart';
class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text('Page Not Found')),
    ],
      ),
    );
  }
}