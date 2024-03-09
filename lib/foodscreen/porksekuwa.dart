import 'package:flutter/material.dart';
import 'package:foodapp/ordered.dart';

class PorkSekuwa extends StatefulWidget {
  const PorkSekuwa({super.key});

  @override
  State<PorkSekuwa> createState() => _PorkSekuwaState();
}

class _PorkSekuwaState extends State<PorkSekuwa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title:const Text('Buy Pork sekuwa'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.beyondthelimitstreks.com/uploads/media/Blog%20Images/Sekuwa%20Street%20Food.jpg',
                width: 400, 
                height: 500,
              ),
           const   SizedBox(height: 10),
           const   Text(
                'Rs.250/ Per stick',
                
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            const  SizedBox(height: 10),
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