import 'package:flutter/material.dart';
import 'size_configs.dart';
import 'package:country_picker/country_picker.dart';

class RegiaterScreen extends StatefulWidget {
  const RegiaterScreen({super.key});

  @override
  State<RegiaterScreen> createState() => _RegiaterScreenState();
}

class _RegiaterScreenState extends State<RegiaterScreen> {
  final TextEditingController phonecontroller = TextEditingController();

  Country country = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(35),
                horizontal: getProportionateScreenWidth(25)),
            child: Column(
              children: [
                Container(
                  width: getProportionateScreenWidth(230),
                  height: getProportionateScreenHeight(230),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image.asset("assets/images/phone.png"),
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                const Text(
                  "Let's get started",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(22, 75, 48, 1),
                    fontSize: 40,
                  ),
                ),
                const Text(
                  "Enter your Phone Number for registration",
                  style: TextStyle(
                    color: Color.fromRGBO(46, 112, 78, 1),
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                TextFormField(
                  controller: phonecontroller,
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 58, 58, 58),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 58, 58, 58),
                      ),
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "${country.flagEmoji} ${country.phoneCode}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
