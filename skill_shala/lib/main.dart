import 'package:flutter/material.dart';
import 'package:skill_shala/screens/counselling.dart';
import 'package:skill_shala/screens/faq.dart';
import 'package:skill_shala/screens/home_screen.dart';
import 'package:skill_shala/screens/portal.dart';
import 'package:skill_shala/screens/skills/courses.dart';
import 'package:skill_shala/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: 'splash',
      routes: {
        'splash': (context) => const SplashScreen(),
        'home_screen': (context) => const HomeScreen(),
        'courses': (context) => const Courses(),
        'counselling': (context) => const Counselling(),
        'FAQ': (context) => const FAQ(),
        'portal': (context) => const Portal(),
      },
    );
  }
}
