import 'package:flutter/material.dart';
import 'package:skill_shala/helper/commons.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            "FAQ",
            style: headingText,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: ExpansionTile(
              title: Text(
                "What is the fees of the course?",
                style: quesText,
              ),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Don't worry you need NOT pay anything. We just need your zeal and enthusiasm to learn and grow.",
                    style: ansText,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: ExpansionTile(
              title: Text(
                "What is the fees of the course?",
                style: quesText,
              ),
              children: [
                Text(
                  "Don't worry you need NOT pay anything. We just need your zeal and enthusiasm to learn and grow.",
                  style: ansText,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: ExpansionTile(
              title: Text(
                "What is the fees of the course?",
                style: quesText,
              ),
              children: [
                Text(
                  "Don't worry you need NOT pay anything. We just need your zeal and enthusiasm to learn and grow.",
                  style: ansText,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: ExpansionTile(
              title: Text(
                "What is the fees of the course?",
                style: quesText,
              ),
              children: [
                Text(
                  "Don't worry you need NOT pay anything. We just need your zeal and enthusiasm to learn and grow.",
                  style: ansText,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
