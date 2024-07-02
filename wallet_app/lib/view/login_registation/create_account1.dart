import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/login_registation/boiler_plate.dart';
import 'package:wallet_app/view/login_registation/otp1_page.dart';

class CreateAccountScreen1 extends StatefulWidget {
  const CreateAccountScreen1({super.key});

  @override
  State<CreateAccountScreen1> createState() => _CreateAccountScreenState1();
}

class _CreateAccountScreenState1 extends State<CreateAccountScreen1> {
  bool passwordVisible = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 17, right: 17, top: 17),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 171,
                ),
                Text(
                  "Create Account",
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
                  "Name",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(25, 25, 25, 1),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 4),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "e.g. John Doe",
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
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Email",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(25, 25, 25, 1),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 4),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "e.g. email@example.com",
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
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Password",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(25, 25, 25, 1),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 4,
                  ),
                  child: TextField(
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(
                              () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          }),
                      hintText: "Enter your password",
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
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      tristate: false,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                    ),
                    Text(
                      "I accept ",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(25, 25, 25, 1),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "terms and conditions ",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                    ),
                    Text(
                      "and ",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(25, 25, 25, 1),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "privacy policy ",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Otp1Screen();
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
                      "Create a new account",
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
              ]),
        ),
      ),
    );
  }
}
