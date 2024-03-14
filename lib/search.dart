import 'package:flutter/material.dart';
import 'package:foodapp/foodscreen/biryani.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}
 final TextEditingController _searchController = TextEditingController();

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
     return   Scaffold(
      body: Column(
        children: [
        const  SizedBox(height: 20,),
          Container(
            padding: const  EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: ('Search'),
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search_sharp, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ),
          ),
         Padding(
  padding: const EdgeInsets.all(10),
  child: GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: ((context) => const Biryani())));
    },
    child: Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Image.asset('assets/biryani.png'),
      ),
    ),
  ),
),

         const Text(' Special Biryan'),
       const   SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Expanded(
              flex: 1,
              child: Image.network('assets/KFC.png'),
            ),
          ),
        ],
      ),
    );
  }
}