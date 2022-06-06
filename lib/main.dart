import 'package:flutter/material.dart';
import 'package:i_exchange_it/constants/routes.dart';
import 'package:i_exchange_it/login/login.dart';
import 'package:i_exchange_it/login/loginsignup.dart';
import 'package:i_exchange_it/login/signup.dart';
import 'package:i_exchange_it/login/splashscreen.dart';
import 'package:i_exchange_it/screens/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        home: const SplashScreen(),
        onGenerateRoute: (RouteSettings settings) {
          // Choose Login SignUp Route
          if (settings.name == chooseloginsignuproute) {
            return MaterialPageRoute(builder: (context) => const LoginSignup());
          }
           if (settings.name == loginScreen) {
            return MaterialPageRoute(builder: (context) => const LOginScreen());
          }
           if (settings.name == signupScreen) {
            return MaterialPageRoute(builder: (context) => const SignUPScreen());
          }
          if (settings.name == botomnavigationbar) {
            return MaterialPageRoute(builder: (context) =>  const BottomNavigationbar());
          }
          return null;
        });
  }
}
