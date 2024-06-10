import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 48, bottom: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Login",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: const Color.fromRGBO(245, 146, 69, 1)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Image.asset("assets/loginpage1.png"),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Email",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color.fromRGBO(194, 195, 204, 1)),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              height: 36,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(250, 200, 162, 1),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1)),
                  hintText: 'PetGuardian@gmail.com',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Lable",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color.fromRGBO(194, 195, 204, 1)),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              height: 36,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(250, 200, 162, 1),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1)),
                  hintText: '*********',
                  border: InputBorder.none,
                  suffixIcon: const Icon(
                    Icons.remove_red_eye,
                    size: 22,
                    color: Color.fromRGBO(
                      245,
                      146,
                      69,
                      1,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forgot Password ? ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "Click Here",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                  onTap: () {},
                )
              ],
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 16,
                  bottom: 25,
                ),
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Dashboard();
                }));
              },
            ),
            const Divider(
              color: Color.fromRGBO(245, 146, 69, 1),
              thickness: 1,
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 25,
                  bottom: 18,
                ),
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "LOGIN WITH EMAIL",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: 40,
                ),
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "LOGIN WITH FACEBOOK",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 80,
                right: 80,
                bottom: 40,
              ),
              height: 40,
              width: 327,
              alignment: Alignment.center,
              child: Text(
                "By continue you agree to our Terms & Privacy Policy",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(31, 32, 41, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
