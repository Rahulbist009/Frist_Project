import 'package:flutter/material.dart';
import 'package:flutter_project_login/navigator/route_name.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
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
            const Positioned(
              top: 100.0,
              left: 26.0,
              child: Text(
                'Get Started ',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              top: 175.0,
              left: 26.0,
              child: Text(
                'Start with sign up or sign in ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 130.0,
              left: 20.0,
              right: 20.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.signInScreen,
                  );
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                      child: Text('SIGN IN',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  // Add form fields or other content here if needed
                ),
              ),
            ),
            Positioned(
              bottom: 60.0,
              left: 20.0,
              right: 20.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.signupScreen,
                  );
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                      child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
