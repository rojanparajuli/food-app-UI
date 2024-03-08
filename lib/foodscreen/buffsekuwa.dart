import 'package:flutter/material.dart';
import 'package:foodapp/ordered.dart';

class BuffSekuwa extends StatefulWidget {
  const BuffSekuwa({super.key});

  @override
  State<BuffSekuwa> createState() => _BuffSekuwaState();
}

class _BuffSekuwaState extends State<BuffSekuwa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title: Text('Buy Buff Sekuwa'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://pbs.twimg.com/media/FFH6KZiVcAIEnPO.jpg:large',
                width: 400, 
                height: 500,
              ),
              SizedBox(height: 10),
              Text(
                'Rs.100/ per stick',
                
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