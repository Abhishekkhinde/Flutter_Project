// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});
  @override
  State<GetStarted> createState() => _GetStatedState();
}

class _GetStatedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 650,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/1.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 68, right: 68, top: 25, bottom: 8),
            child: Text(
              "Lets find your Paradise",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 95, right: 80, top: 8, bottom: 15),
            child: Text(
              "Find your perfect dream space with just a few clicks",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color.fromRGBO(101, 101, 101, 1)),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(180, 45),
                backgroundColor: const Color.fromRGBO(32, 169, 247, 1)),
            onPressed: () {},
            child: Text(
              "Get Started",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
