import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:skill_shala/screens/home_screen.dart';
//import 'package:skill_shala/screens/home_screen.dart';
import 'package:skill_shala/screens/register_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      centered: true,
      splash: 'assets/images/logo.png',
      splashIconSize: 400,
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}
