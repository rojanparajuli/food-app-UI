import 'package:flutter/material.dart';
import 'package:foodapp/ordered.dart';

class ChickenPizza extends StatefulWidget {
  const ChickenPizza({super.key});

  @override
  State<ChickenPizza> createState() => _ChickenPizzaState();
}

class _ChickenPizzaState extends State<ChickenPizza> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title:const Text('Buy Chicken Pizza'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.afamilyfeast.com/wp-content/uploads/2014/01/buffalo-chicken-pizza.jpg',
                width: 400, 
                height: 500,
              ),
           const   SizedBox(height: 10),
           const   Text(
                'Rs.1000',
                
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