import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(transform: GradientRotation(20), stops: [
              0.6,
              0.4
            ], colors: [
              Color.fromRGBO(34, 40, 52, 1),
              Color.fromRGBO(75, 76, 237, 1),
            ]),
          ),
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              "EXTREME",
              textAlign: TextAlign.center,
              style: GoogleFonts.allertaStencil(
                  fontWeight: FontWeight.w500,
                  fontSize: 140,
                  color: const Color.fromRGBO(255, 255, 255, 0.1)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "GT BIKE",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(55, 182, 233, 1),
                      Color.fromRGBO(72, 92, 236, 1),
                      Color.fromRGBO(75, 76, 237, 1)
                    ]),
                  ),
                  child: const Image(
                    image: AssetImage(
                      "assets/back (2).png",
                    ),
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/bicycle/3.png")
          ]),
        ),
      ]),
    );
  }
}
