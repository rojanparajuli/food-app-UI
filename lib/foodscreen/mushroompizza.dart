import 'package:flutter/material.dart';
import 'package:foodapp/ordered.dart';

class MushRoomPizza extends StatefulWidget {
  const MushRoomPizza({super.key});

  @override
  State<MushRoomPizza> createState() => _MushRoomPizzaState();
}

class _MushRoomPizzaState extends State<MushRoomPizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title: Text('Buy Mushroom Pizza'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.foodiecrush.com/wp-content/uploads/2018/05/Truffle-Mushroom-Pizza-foodiecrush.com-017.jpg',
                width: 400, 
                height: 500,
              ),
              SizedBox(height: 10),
              Text(
                'Rs.900',
                
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