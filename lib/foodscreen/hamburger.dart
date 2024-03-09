import 'package:flutter/material.dart';
import 'package:foodapp/ordered.dart';

class HamBurger extends StatefulWidget {
  const HamBurger({super.key});

  @override
  State<HamBurger> createState() => _HamBurgerState();
}

class _HamBurgerState extends State<HamBurger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title:const Text('Buy Ham Burger'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.cookwithnabeela.com/wp-content/uploads/2024/02/Hamburger.webp',
                width: 400, 
                height: 500,
              ),
           const   SizedBox(height: 10),
           const   Text(
                'Rs.350',
                
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
             const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const OrderSucessful()));
              
                },
                child:const Text('Buy Now'),
              ),
            ],
          ),
        )
    );
  }
}