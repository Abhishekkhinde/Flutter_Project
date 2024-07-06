import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/main_page/boiler_plate_main.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      bottomNavigationBar: BottomNaviBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "My Cards",
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: const Color.fromRGBO(25, 25, 25, 1),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "Add Cart",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color.fromRGBO(29, 98, 202, 1),
                    ),
                  ),
                  Icon(
                    Icons.add,
                    size: 12,
                    color: Color.fromRGBO(29, 98, 202, 1),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Stack(
              children: [Container()],
            )
          ],
        ),
      ),
    );
  }
}
