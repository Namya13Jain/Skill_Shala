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

    phonecontroller.selection = TextSelection.fromPosition(
        TextPosition(offset: phonecontroller.text.length));
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(35),
                horizontal: getProportionateScreenWidth(25)),
            child: SingleChildScrollView(
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
                    onChanged: (value) {
                      setState(() {
                        phonecontroller.text = value;
                      });
                    },
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
                          onTap: () {
                            showCountryPicker(
                                countryListTheme: CountryListThemeData(
                                  bottomSheetHeight:
                                      getProportionateScreenHeight(500),
                                ),
                                context: context,
                                onSelect: (value) {
                                  setState(() {
                                    country = value;
                                  });
                                });
                          },
                          child: Text(
                            "${country.flagEmoji} + ${country.phoneCode}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      suffixIcon: phonecontroller.text.length > 9
                          ? Container(
                              height: getProportionateScreenHeight(30),
                              width: getProportionateScreenWidth(30),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 20,
                              ),
                            )
                          : null,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  //Button for login
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: getProportionateScreenHeight(50),
                      width: getProportionateScreenWidth(100),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(74, 180, 125, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
