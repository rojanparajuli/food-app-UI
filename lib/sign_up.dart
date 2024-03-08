import 'package:flutter/material.dart';
import 'package:foodapp/otp.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _emailControllerSignup = TextEditingController();
   final TextEditingController _createPasswordController= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
            const  SizedBox(
                height: 150,
              ),
               const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Enter Your Name',
                  filled: true,
                  prefixIcon: const Icon(Icons.person),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
         const    SizedBox(
                height: 20,
              ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller:_emailControllerSignup,
                decoration: InputDecoration(
                  labelText: 'Enter Your Email',
                  filled: true,
                  prefixIcon: const Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
        const    SizedBox(
                height: 20,
              ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller:_createPasswordController,
                decoration: InputDecoration(
                  labelText: 'Create Your Password',
                  filled: true,
                  prefixIcon: const Icon(Icons.lock),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
         const     SizedBox(
                height: 20,
              ),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller:_phonenumberController,
                decoration: InputDecoration(
                  labelText: 'Enter Your Number',
                  filled: true,
                  prefixIcon: const Icon(Icons.phone),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
             const SizedBox(height: 55),
            ElevatedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const OneTimePassword ()));
              },
              child: const Text('SIGN IN'),
            ),
            ],
          ),
        ),
      ),
    );
  }
  @override
void dispose(){
  _nameController.dispose();
  _createPasswordController.dispose();
  _emailControllerSignup.dispose();
  _phonenumberController.dispose();
  super.dispose();
  }
}
