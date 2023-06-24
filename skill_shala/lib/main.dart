import 'package:flutter/material.dart';
import 'package:skill_shala/screens/home_screen.dart';
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
        'splash': (context) => SplashScreen(),
        'home_screen': (context) => HomeScreen(),
        'courses': (context) => Courses(),
      },
    );
  }
}
