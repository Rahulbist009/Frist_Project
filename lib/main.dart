import 'package:flutter/material.dart';

import 'navigator/route_name.dart';
import 'navigator/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.splashscreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
