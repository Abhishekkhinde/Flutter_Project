import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          Stack(
            children: [
              // Container(
              //   height: _heights * 0.7,
              //   width: _widths,
              //   decoration: BoxDecoration(
              //       boxShadow: [BoxShadow(blurRadius: 1)],
              //       image: const DecorationImage(
              //           image: AssetImage("assets/onboarding.png"))),
              // ),
              AspectRatio(
                aspectRatio: 5 / 7,
                child: Image.asset(
                  "assets/onboarding.png",
                  fit: BoxFit.fill,
                  // color: Color.fromARGB(255, 240, 236, 236).withOpacity(1.0),
                  // colorBlendMode: BlendMode.softLight,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 1,
                right: 1,
                child: Container(
                  width: widths,
                  height: heights * 0.2,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.0),
                          const Color.fromRGBO(255, 255, 255, 1)
                        ],
                        stops: const [
                          0.0,
                          1.0
                        ]),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 8,
                left: widths * 0.15,
                right: widths * 0.15,
                bottom: heights * 0.01),
            child: Text(
              "Wherever you are health is number one",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w800,
                fontSize: 26,
                color: const Color.fromRGBO(25, 33, 38, 1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 0.01,
              left: widths * 0.15,
              right: widths * 0.15,
              bottom: heights * 0.1,
            ),
            child: Text(
              "There is no instant way to a healthy life",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: const Color.fromRGBO(25, 33, 38, 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
