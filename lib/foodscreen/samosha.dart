import 'package:flutter/material.dart';
import 'package:foodapp/ordered.dart';

class SamosaScreen extends StatefulWidget {
  const SamosaScreen({super.key});

  @override
  State<SamosaScreen> createState() => _SamosaScreenState();
}

class _SamosaScreenState extends State<SamosaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title: Text('Buy Samosas'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://myfoodstory.com/wp-content/uploads/2021/08/Punjabi-Samosa-1.jpg',
                width: 400, 
                height: 500,
              ),
              SizedBox(height: 10),
              Text(
                'Rs.50',
                
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> OrderSucessful()));
              
                },
                child: Text('Buy Now'),
              ),
            ],
          ),
        ),
      );
   
  }
}






