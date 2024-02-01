import 'package:flutter/material.dart';

import '../navigator/route_name.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Image(
              image: AssetImage('glowing-background.jpg'),
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    const Text(
                      'Forget Password',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    const Text(
                      'Enter Email Address',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Abc@gmail.com',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(Icons.email),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'Back to Sign in',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    const SizedBox(height: 80),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RouteName.otpScreen); // Handle sign-up
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'SEND ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Positioned(
                bottom: 250,
                right: 160,
                child: Center(
                  child: Text(
                    'Do you have an Account?',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            const SizedBox(height: 8),

            // Positioned widget moved inside the Stack
            Positioned(
              bottom: 200.0,
              left: 20.0,
              right: 20.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.signupScreen);
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                      child: Text('SIGN UP',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
