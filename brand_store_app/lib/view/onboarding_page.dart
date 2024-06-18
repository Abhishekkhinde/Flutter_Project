import 'package:brand_store_app/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/1.png",
                  ),
                  fit: BoxFit.fill),
            ),
          ),
           SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Text(
              "Find The Best Collections",
              style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w600,
                  fontSize: 42,
                  color: const Color.fromRGBO(13, 13, 14, 1)),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Text(
              "Get your dream item easily with FashionHub and get other intersting offer",
              style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color.fromRGBO(121, 119, 128, 1)),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 62),
                      alignment: Alignment.center,
                      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(90),
                        ),
                        side: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(13, 13, 14, 1)),
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 62),
                    alignment: Alignment.center,
                    backgroundColor: const Color.fromRGBO(255, 122, 0, 1),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(90),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomeScreen();
                    }));
                  },
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
