import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'navigator/route_name.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  )..repeat();

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.popAndPushNamed(context, RouteName.getStarted),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
                animation: controller,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: controller.value * 2.0 * math.pi,
                    child: child,
                  );
                },
                child: const SizedBox(
                  height: 200,
                  width: 200,
                  child: Image(
                      image: AssetImage('dating-app-logo-example.jpg')),
                )),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Project App',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
