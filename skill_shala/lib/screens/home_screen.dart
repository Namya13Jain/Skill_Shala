import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 240, 222, 1),
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/ss_name.png"),
      ),
      body: Column(
        children: [
          //Features

          // Reviews
          Wrap(
            direction: Axis.horizontal,
            children: [
              // 1st review
              Container(),
              //2nd review
              //3rd review
              //4th review
            ],
          ),
        ],
      ),
    );
  }
}
