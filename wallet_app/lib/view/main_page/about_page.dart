import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_back_ios,
                  size: 12,
                  color: Color.fromRGBO(29, 98, 202, 1),
                ),
                Text(
                  "Back",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color.fromRGBO(29, 98, 202, 1),
                  ),
                ),
              ],
            ),
          ),
          leadingWidth: 70,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "About eWallet",
                textAlign: TextAlign.justify,
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '''Our app allows you to easily store, manage, and spend your money on the go. With our secure platform, you can make transactions, check your balance, and track your spending all in one place.

Whether you're paying bills, shopping online, or sending money to friends and family, our app makes it easy and convenient to do so. Plus, with our various promotions and discounts, you can save even more while using our app.

Thank you for choosing us as your preferred e-wallet solution. If you have any questions or feedback, please don't hesitate to contact us. We're always here to help.''',
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color.fromRGBO(83, 93, 102, 1),
                ),
              ),
            ],
          ),
        ));
  }
}
