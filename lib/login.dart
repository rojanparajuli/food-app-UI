import 'package:flutter/material.dart';
import 'package:foodapp/constructor/clipper.dart';
import 'package:foodapp/home.dart';
import 'package:foodapp/sign_up.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      resizeToAvoidBottomInset:false,
      body:
       Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
          Container(
                 height: 300,
                 width: double.infinity,
                 color: Colors.grey[100],
                 child: Stack(
                   children: [
                     Positioned(
                       top: -50,
                       right: -60,
                       child: Container(
                           height: 250,
                           width: 250,
                           decoration: BoxDecoration(
                             color: Colors.pink.withOpacity(0.3),
                             shape: BoxShape.circle,
                           )),
                     ),
                     Positioned(
                       top: -310,
                       left: -120,
                       child: Container(
                           height: 500,
                           width: 500,
                           decoration: BoxDecoration(
                             color: Colors.pink.withOpacity(0.3),
                             shape: BoxShape.circle,
                           )),
                     ),
                     ClipPath(
                       clipper: ClipPainter(),
                       child: Container(
                         height: 200,
                         width: double.infinity,
                         color: Colors.pink,
                       ),
                     ),
                     Positioned(
                         top: 120,
                         left: MediaQuery.of(context).size.width / 2 - 50,
                         child: const CircleAvatar(
                           backgroundColor: Colors.white,
                           radius: 50,
                           backgroundImage: AssetImage('assets/pp.jpg'),
                         )),
                   ],
                 )),
           const Center(
             child: Text(
               'Enter Your Email and Password.',
               style: TextStyle(
                 fontSize: 18,
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
                 fontFamily: "NotoSerif-Italic"
               ),
             ),
           ),
           const SizedBox(height: 40),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: TextFormField(
               controller: _emailController,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30),
                 ),
                 labelText: 'Email',
                 filled: true,
                 prefixIcon: const Icon(Icons.email),
                 focusedBorder: OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.blue),
                   borderRadius: BorderRadius.circular(30),
                 ),
               ),
             ),
           ),
           const SizedBox(height: 15),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: TextFormField(
               controller: _passwordController,
       
               obscureText: true,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30),
                 ),
                 labelText: 'Password',
                 filled: true,
                 prefixIcon: const Icon(Icons.lock),
                 suffixIcon: const Icon(Icons.visibility),
                 focusedBorder: OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.blue, ),
                   borderRadius: BorderRadius.circular(30),
                 ),
               ),
             ),
           ),
           const SizedBox(height: 55),
           ElevatedButton(
             style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
             onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
             },
             child: const Text('SIGN IN', style: TextStyle( color: Colors.white),),
           ),
           const SizedBox(height: 20),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children:  [
             const  Text( 
                 'Don\'t have an account?',
                 textAlign: TextAlign.center,
               ),
               TextButton(
                 onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUP()));
       
                  
                 },
                 child: const Text(
                   'SIGN UP',
                   style: TextStyle(
                     color: Colors.green,
                     decoration: TextDecoration.underline,
                   ),
                   
                 ),
               ),
             ],
           ),
         ],
       ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
   
    super.dispose();
  }
}
