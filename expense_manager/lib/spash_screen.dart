import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'transaction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: GestureDetector(
              child: Container(
                height: 144,
                width: 144,
                // padding: const EdgeInsets.only(left: 108, right: 108),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(234, 238, 235, 1),
                    shape: BoxShape.circle),
                child: Image.asset(
                  "assets/Group 77.png",
                  width: 69.76,
                  height: 58.82,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
            ),
          ),
          const Spacer(),
          Text(
            "Expense Manager",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 91,
          )
        ],
      ),
    );
  }
}
