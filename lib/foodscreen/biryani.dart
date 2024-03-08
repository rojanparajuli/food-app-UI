import 'package:flutter/material.dart';
import 'package:foodapp/ordered.dart';

class Biryani extends StatefulWidget {
  const Biryani({super.key});

  @override
  State<Biryani> createState() => _BiryaniState();
}

class _BiryaniState extends State<Biryani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title: Text('Buy Biryani'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.sugarspicenmore.com/wp-content/uploads/2021/08/Sindhi-Chicken-Biryani-3.jpeg',
                width: 400, 
                height: 500,
              ),
              SizedBox(height: 10),
              Text(
                'Rs.100',
                
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