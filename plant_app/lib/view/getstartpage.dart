import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartPage extends StatefulWidget {
  const GetStartPage({super.key});
  @override
  State createState() => _GetStartPageState();
}

class _GetStartPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          width: double.infinity,
          height: 500,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 40),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/1.png"), fit: BoxFit.fill),
          ),
        ),
        Container(
          height: 99,
          width: 255,
          // padding: const EdgeInsets.only(left: 56.56, right: 56.56),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enjoy your",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 34.22,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "life with",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 34.22,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  Text(
                    " Plants",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 34.22,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 330,
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(62, 102, 24, 1),
                  Color.fromRGBO(124, 180, 70, 1),
                ]),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 40,
                      offset: Offset(0, 20),
                      color: Color.fromRGBO(0, 0, 0, 0.15)),
                ]),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get Started",
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                  // textAlign: TextAlign.center,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Color.fromRGBO(255, 255, 255, 1),
                )
              ],
            ),
          ),
          onDoubleTap: () {},
        ),
      ]),
    );
  }
}
