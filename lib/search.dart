import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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