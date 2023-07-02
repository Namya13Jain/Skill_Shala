import 'package:flutter/material.dart';
import 'package:skill_shala/helper/commons.dart';
import 'package:skill_shala/helper/constants.dart';
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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        centerTitle: true,
        title: Image.asset(
          "assets/images/logo.png",
          width: getProportionateScreenWidth(130),
          height: getProportionateScreenHeight(60),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                UniconsLine.paragraph,
                color: Color.fromRGBO(24, 15, 69, 1),
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
            SizedBox(
              height: getProportionateScreenHeight(200),
            ),
            //home
            ListTile(
                leading: homelogo,
                title: const Text(
                  'Home',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'home_screen');
                }),
            //Learning Center
            ListTile(
                leading: learnlogo,
                title: const Text(
                  'Learn',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'courses');
                }),
            //Book Counselling
            ListTile(
                leading: counsellogo,
                title: const Text(
                  'Book Counselling',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'counselling');
                }),
            // Shopping Cart
            ListTile(
                leading: cartLogo,
                title: const Text(
                  'Explore Products',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'portal');
                }),
            //FAQ
            ListTile(
                leading: faqlogo,
                title: const Text(
                  'FAQ',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'FAQ');
                }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Features
            const Text(
              "Welcome to Skill शाळा",
              style: headingText,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: handsTogether,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(30),
                  vertical: getProportionateScreenHeight(10)),
              child: const Text(
                "Skill शाळा is a platform which will help women to get access to various courses which would help them gain skills and be financially independent. These courses would help them gain practical knowledge through video tutorials and offline workshops held in collaboration with NGOs and the government.",
                textAlign: TextAlign.justify,
                style: ansText,
              ),
            ),

            /* GestureDetector(
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
                    color: const Color.fromRGBO(45, 32, 112, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    "Explore Courses",
                    style: buttonStyle,
                  ),
                ),
              ),
            ), */
            //Features
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const Text(
              "Our Features",
              style: headingText,
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Wrap(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  height: getProportionateScreenHeight(400),
                  width: getProportionateScreenWidth(150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    children: [
                      learnImage,
                      Text(
                        "Boost your carer by learning new skills from tutorials and workshops",
                        style: featuresText,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  height: getProportionateScreenHeight(400),
                  width: getProportionateScreenWidth(150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    children: [
                      counselImage,
                      Text(
                        "Book counselling session with our mentors for selecting the right skills for you",
                        style: featuresText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Wrap(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  height: getProportionateScreenHeight(400),
                  width: getProportionateScreenWidth(150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    children: [
                      cartImage,
                      Text(
                        "Shop the products made by our learners and support them financially",
                        style: featuresText,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  height: getProportionateScreenHeight(400),
                  width: getProportionateScreenWidth(150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    children: [
                      getHiredImage,
                      Text(
                        "Explore the openings in various departments and get hired",
                        style: featuresText,
                      ),
                    ],
                  ),
                ),
              ],
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
          ],
        ),
      ),
    );
  }
}
