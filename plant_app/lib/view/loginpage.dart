import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/3.png",
                height: 129,
                width: 210,
                color: const Color.fromRGBO(204, 211, 196, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // const Spacer(),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 36, right: 36),
              child: Text(
                "Log in",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
            const SizedBox(height: 30),
            // const Spacer(),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 20,
                        offset: Offset(0, 8),
                        color: Color.fromRGBO(0, 0, 0, 0.06))
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.phone_outlined),
                  hintText: 'Mobile Number',
                  hintStyle: GoogleFonts.inter(
                    color: const Color.fromRGBO(164, 164, 164, 1),
                    fontSize: 15.73,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // const Spacer(),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(62, 102, 24, 1),
                  Color.fromRGBO(124, 180, 70, 1)
                ]),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "Log in",
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 53,
            ),
            // const Spacer(),
            Image.asset("assets/2.jpg"),
          ],
        ),
      ),
    );
  }
}
