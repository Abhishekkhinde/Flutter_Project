// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/View/home_screen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});
  @override
  State<GetStarted> createState() => _GetStatedState();
}

class _GetStatedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: heights * 0.75,
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
            padding: EdgeInsets.only(top: heights * 0.025, bottom: 8),
            child: Text(
              "Lets find your Paradise",
              textAlign: TextAlign.center,
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
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color.fromRGBO(101, 101, 101, 1)),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(widths * 0.500, heights * 0.056),
                backgroundColor: const Color.fromRGBO(32, 169, 247, 1)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
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
