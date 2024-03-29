import 'package:flutter/material.dart';
import 'package:foodapp/ordered.dart';
class MixedPizza extends StatefulWidget {
  const MixedPizza({super.key});

  @override
  State<MixedPizza> createState() => _MixedPizzaState();
}

class _MixedPizzaState extends State<MixedPizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title:const Text('Buy Mixed Pizza'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.kitchennostalgia.com/wp-content/uploads/2016/07/crazy-dough-pizza2.jpg',
                width: 400, 
                height: 500,
              ),
            const  SizedBox(height: 10),
            const  Text(
                'Rs.1100',
                
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
           const   SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const OrderSucessful()));
              
                },
                child:const Text('Buy Now'),
              ),
            ],
          ),
        ),
    );
  }
}