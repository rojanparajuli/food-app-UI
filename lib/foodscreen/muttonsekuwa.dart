import 'package:flutter/material.dart';
import 'package:foodapp/ordered.dart';

class MuttonSekuwa extends StatefulWidget {
  const MuttonSekuwa({super.key});

  @override
  State<MuttonSekuwa> createState() => _MuttonSekuwaState();
}

class _MuttonSekuwaState extends State<MuttonSekuwa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title:const Text('Buy Mutton Sekuwa'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://shopmnr.com/wp-content/uploads/2021/11/Sekuwa.jpg',
                width: 400, 
                height: 500,
              ),
             const SizedBox(height: 10),
             const Text(
                'Rs.300/ per stick',
                
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