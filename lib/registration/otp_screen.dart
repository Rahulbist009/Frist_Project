import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../navigator/route_name.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Image(
              image: AssetImage('glowing-shapes.jpg'),
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Enter veyfication code',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    keyboardType: TextInputType.number,
                    obscuringCharacter: '*',
                    obscureText: true,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(15),
                      activeColor: Colors.green,
                      inactiveColor: Colors.blue,
                      selectedColor: Colors.yellow,
                      errorBorderColor: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Center(
                      child: Row(
                        children: [
                          Text("If you didn't receive a code?",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Resend",
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteName.changePassword); // Handle sign-up
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
                ],
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
