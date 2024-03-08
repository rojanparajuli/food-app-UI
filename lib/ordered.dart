import 'package:flutter/material.dart';
import 'package:foodapp/home.dart';


class OrderSucessful extends StatefulWidget {
  const OrderSucessful({super.key});

  @override
  State<OrderSucessful> createState() => _OrderSucessfulState();
}

class _OrderSucessfulState extends State<OrderSucessful> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        body: Container(
          decoration: BoxDecoration(
           gradient: LinearGradient(
            colors: [Colors.white, Colors.lightBlue],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.thumb_up,
                  size: 100,
                  color: Colors.green,
                ),
                SizedBox(height: 20),
                Text(
                  'Thank you for buying with us!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800],
                  ),
                ),
                SizedBox(height: 40,),
                 ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> HomeScreen()));
              
                },
                child: Text('Back'),
              ),
              ],
            ),
          ),
        ),
      );
    
  }
}