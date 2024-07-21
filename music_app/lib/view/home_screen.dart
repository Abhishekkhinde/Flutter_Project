import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/landing_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 0.6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 44, right: 44, bottom: 30),
            height: screenHeight * 3 / 4,
            width: 497,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/home.png",
                    ),
                    fit: BoxFit.fill)),
            child: Text(
              "Dancing between The shadows Of rhythm ",
              style: GoogleFonts.inter(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(255, 46, 0, 1),
              fixedSize: const Size(261, 47),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const BottomNavi();
                },
              ));
            },
            child: Text(
              "Get Started",
              style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(19, 19, 19, 1)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
              fixedSize: const Size(261, 47),
              side: const BorderSide(
                strokeAlign: BorderSide.strokeAlignInside,
                width: 1,
                color: Color.fromRGBO(255, 46, 0, 1),
              ),
              backgroundColor: Colors.transparent,
            ),
            onPressed: () {},
            child: Text(
              "Continue With Email",
              style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(255, 46, 0, 1)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 40, right: 40),
            child: Text(
              "by continuing you agree to terms of services and Privacy policy",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(203, 200, 200, 0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
