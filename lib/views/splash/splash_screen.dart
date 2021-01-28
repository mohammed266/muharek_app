
import 'package:flutter/material.dart';
import 'package:muharek_app/views/splash/splash1_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1500,
      nextScreen: Splash1Screen(),
      splash: Center(child: Image.asset('assets/icons/logo.png',)),
      backgroundColor: Color(0xFFF8F8F8),
      pageTransitionType: PageTransitionType.bottomToTop,
      splashTransition: SplashTransition.scaleTransition,
      splashIconSize: 150,
    );
  }
}
