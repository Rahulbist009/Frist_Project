import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../navigator/route_name.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool privacyPolicy = false;
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
            const Positioned(
                top: 100,
                left: 26,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 60),
                )),
            const Positioned(
                top: 175,
                left: 26,
                child: Text(
                  "Hello let's join with us",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.italic),
                )),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enter email ',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon:
                          const Icon(Icons.email, color: Colors.blueGrey),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Enter  password',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon:
                          const Icon(Icons.lock, color: Colors.blueGrey),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Re-enter  password',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon:
                          const Icon(Icons.lock, color: Colors.blueGrey),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )),
                    CheckboxListTile(
                      title: const Text(
                        'I agree with privacy policy',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      value: privacyPolicy,
                      onChanged: (value) {
                        setState(() {
                          privacyPolicy = value!;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      tileColor: Colors.transparent,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 200.0,
              left: 20.0,
              right: 20.0,
              child: GestureDetector(
                onTap: () {
                  if (privacyPolicy) {
                    Navigator.pushNamed(context, RouteName.homepage);
                  } else {
                    showToast('Please check privacy Policy');
                  }
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
            Positioned(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'You already have a account?',
                        style: TextStyle(
                            color: Colors.white, fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.signInScreen);
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
