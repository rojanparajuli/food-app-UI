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
          title: Text('Buy Ham Burger'),
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
              SizedBox(height: 10),
              Text(
                'Rs.350',
                
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
        )
    );
  }
}