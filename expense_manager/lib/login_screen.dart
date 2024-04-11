import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'register_screen.dart';
import 'transaction_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 86),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/Group 77.png",
                width: 69.76,
                height: 58.82,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              "Login to your Account",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 17),
              margin: const EdgeInsets.only(top: 25, bottom: 11),
              height: 49,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 18,
                      spreadRadius: 0,
                      offset: Offset(0, 3),
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      blurStyle: BlurStyle.outer),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "username",
                  hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(0, 0, 0, 0.4)),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 49,
              padding: const EdgeInsets.only(left: 17),
              margin: const EdgeInsets.only(top: 11, bottom: 15),

              // height: 49,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 18,
                      spreadRadius: 0,
                      offset: Offset(0, 3),
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      blurStyle: BlurStyle.outer),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(0, 0, 0, 0.4)),
                  border: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                height: 49,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(14, 161, 125, 1),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Sign In ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(14, 161, 125, 1),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
