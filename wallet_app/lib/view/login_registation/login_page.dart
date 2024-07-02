import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wallet_app/view/login_registation/create_account_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Image.asset(
          "assets/icon.png",
          fit: BoxFit.fill,
          height: 24,
          width: 88,
        ),
      ),
      backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            Image.asset(
              "assets/mobile_icon.png",
              height: 195,
              width: 187,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 81,
            ),
            Container(
              width: double.infinity,
              color: const Color.fromRGBO(255, 255, 255, 1),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(
                  left: 17, right: 17, top: 17, bottom: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter your",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  Text(
                    "mobile number",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Mobile number",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        hintText: "7X-XXXXXXX",
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(186, 194, 199, 1)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromRGBO(225, 227, 237, 1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromRGBO(225, 227, 237, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromRGBO(225, 227, 237, 1),
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      disableLengthCheck: true,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CreateAccountScreen();
                      }));
                    },
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                          color: Color.fromRGBO(87, 50, 191, 1)),
                      child: Text(
                        "Continue",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(children: [
                    const Expanded(child: Divider()),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("or continue using",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(120, 131, 141, 1),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(child: Divider()),
                  ]),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 100,
                          alignment: Alignment.center,
                          // padding: const EdgeInsets.only(
                          //     left: 37, right: 37, top: 10.5, bottom: 10.5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: const Color.fromRGBO(237, 239, 246, 1),
                              width: 1,
                            ),
                          ),
                          child: Image.asset(
                            "assets/facebook_logo.png",
                            height: 25,
                            width: 25,
                            fit: BoxFit.fill,
                            // color: const Color.fromRGBO(25, 119, 243, 1),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 100,
                          alignment: Alignment.center,
                          // padding: const EdgeInsets.only(
                          //     left: 37, right: 37, top: 10.5, bottom: 10.5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: const Color.fromRGBO(237, 239, 246, 1),
                              width: 1,
                            ),
                          ),
                          child: Image.asset(
                            "assets/google_logo.png",
                            height: 25,
                            width: 25,
                            fit: BoxFit.fill,
                            // color: const Color.fromRGBO(25, 119, 243, 1),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 100,
                          alignment: Alignment.center,
                          // padding: const EdgeInsets.only(
                          //     left: 37, right: 37, top: 10.5, bottom: 10.5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: const Color.fromRGBO(237, 239, 246, 1),
                              width: 1,
                            ),
                          ),
                          child: Image.asset(
                            "assets/apple_logo.png",
                            height: 25,
                            width: 25,
                            fit: BoxFit.fill,
                            // color: const Color.fromRGBO(25, 119, 243, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
