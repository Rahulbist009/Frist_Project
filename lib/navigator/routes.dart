import 'package:flutter/material.dart';
import 'package:flutter_project_login/View/home_page.dart';
import 'package:flutter_project_login/navigator/route_name.dart';
import 'package:flutter_project_login/registration/chnge_password_screen.dart';
import 'package:flutter_project_login/registration/forget_screen.dart';
import 'package:flutter_project_login/registration/getstarted_screen.dart';
import 'package:flutter_project_login/registration/otp_screen.dart';
import 'package:flutter_project_login/registration/signupScreen.dart';
import 'package:flutter_project_login/registration/singin_screen.dart';
import 'package:flutter_project_login/splashscreen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashscreen:
        return MaterialPageRoute(builder: (context) => const Splashscreen());

      case RouteName.getStarted:
        return MaterialPageRoute(builder: (context) => const GetStarted());

      case RouteName.signInScreen:
        return MaterialPageRoute(builder: (context) => const SigninScreen());

      case RouteName.signupScreen:
        return MaterialPageRoute(builder: (context) => const SignupScreen());

      case RouteName.forgetScreen:
        return MaterialPageRoute(builder: (context) => const ForgetPassword());

      case RouteName.homepage:
        return MaterialPageRoute(builder: (context) => const HomePage());

      case RouteName.otpScreen:
        return MaterialPageRoute(builder: (context) => const OtpScreen());

      case RouteName.changePassword:
        return MaterialPageRoute(builder: (context) => const ChangePassword());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text('NO route defined')),
          );
        });
    }
  }
}
