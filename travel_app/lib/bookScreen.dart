import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});
  @override
  State createState() => _BookScreenState();
}

class _BookScreenState extends State {
  Scaffold destinationBook() {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(225, 246, 254, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 450,
              width: double.infinity,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage("assets/2.jpg"), fit: BoxFit.fill),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "location 1",
                        style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600)),
                      ),
                      const Spacer(),
                      const Text("ammount300")
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "country name",
                        style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500)),
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return destinationBook();
  }
}
