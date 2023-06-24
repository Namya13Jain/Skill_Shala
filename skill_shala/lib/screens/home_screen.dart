import 'package:flutter/material.dart';
import 'package:skill_shala/helper/commons.dart';
import 'package:skill_shala/screens/size_configs.dart';
import 'package:unicons/unicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        centerTitle: true,
        title: Image.asset(
          "assets/images/ss_name.png",
          width: getProportionateScreenWidth(130),
          height: getProportionateScreenHeight(60),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                UniconsLine.paragraph,
                color: Color.fromRGBO(22, 75, 48, 1),
                size: 24,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'vision');
              },
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: Image(
                  image: AssetImage(
                    "assets/images/logo.png",
                  ),
                  height: 150,
                ),
              ),
            ),
            //home
            ListTile(
                leading: const Icon(
                  UniconsLine.home_alt,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Home',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'home_screen');
                }),
            //Leraning Center
            ListTile(
                leading: const Icon(
                  UniconsLine.file_contract,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Learn',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'courses');
                }),
            //About us
            ListTile(
                leading: const Icon(
                  UniconsLine.question_circle,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'About Us',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'about_us');
                }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Features
            Text(
              "Welcome to Skill शाळा",
              style: headingText,
            ),

            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(30),
                  vertical: getProportionateScreenHeight(10)),
              child: Text(
                "Skill शाळा is a platform which will help women to get access to various courses which would help them gain skills and be financially independent. These courses would help them gain practical knowledge through video tutorials and offline workshops held in collaboration with NGOs and the government.",
                textAlign: TextAlign.justify,
                style: ansText,
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'courses');
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenHeight(30)),
                height: getProportionateScreenHeight(60),
                width: getProportionateScreenWidth(200),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(28, 155, 90, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Explore Courses",
                    style: buttonStyle,
                  ),
                ),
              ),
            ),
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
            // FAQ
            Text(
              "FAQ",
              style: headingText,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ExpansionTile(
                title: Text(
                  "What is the fees of the course?",
                  style: quesText,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Don't worry you need NOT pay anything. We just need your zeal and enthusiasm to learn and grow.",
                      style: ansText,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
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
            Padding(
              padding: const EdgeInsets.all(12.0),
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
            Padding(
              padding: const EdgeInsets.all(12.0),
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
      ),
    );
  }
}
