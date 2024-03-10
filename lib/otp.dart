import 'package:flutter/material.dart';
import 'package:foodapp/registration_Complete.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OneTimePassword extends StatefulWidget {
  const OneTimePassword({super.key});

  @override
  State<OneTimePassword> createState() => _OneTimePasswordState();
}

class _OneTimePasswordState extends State<OneTimePassword> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
        body: Center(
            child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/otp.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const SizedBox(height: 30,),
      const    Text('Enter OTP your', style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "NotoSerif-Italic"
                ),),
        const  SizedBox(
            height: 150,
          ),
          OTPTextField(
            length: 5,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 40,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold), 
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              print("Completed: $pin");
            },
          ),
           const SizedBox(height: 55),
            ElevatedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=> const Registered ()));
              },
              child: const Text('send'),
            ),
        ],
      ),
    )));
  }
}
