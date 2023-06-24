import 'package:flutter/material.dart';
import 'package:skill_shala/helper/commons.dart';
import 'package:skill_shala/screens/size_configs.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: Text(
          "Courses",
          style: headingText,
        ),
      ),
    );
  }
}
