import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Details",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: const Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Container(
            margin: const EdgeInsets.all(22),
            width: double.infinity,
            height: 244,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/detail1.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 22),
            child: Text(
              "Night Hill Villa",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(left: 22, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "\$5900",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(32, 169, 247, 1)),
                ),
                Text(
                  "Month",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(72, 72, 72, 1)),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 22),
            child: Text(
              "London,Night Hill",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: const Color.fromRGBO(72, 72, 72, 1)),
            ),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 141,
                width: 117,
                padding: const EdgeInsets.all(14),
                margin: const EdgeInsets.only(left: 13, top: 13, bottom: 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(255, 255, 255, 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.chair,
                      size: 25,
                      color: Color.fromRGBO(90, 90, 90, 1),
                    ),
                    Text(
                      "Bedrooms",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(90, 90, 90, 1)),
                    ),
                    Text(
                      "5",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 141,
                width: 117,
                padding: const EdgeInsets.all(14),
                margin: const EdgeInsets.only(left: 13, top: 13, bottom: 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(255, 255, 255, 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.bathtub_rounded,
                      size: 25,
                      color: Color.fromRGBO(90, 90, 90, 1),
                    ),
                    Text(
                      "Bathrooms",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(90, 90, 90, 1)),
                    ),
                    Text(
                      "6",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 141,
                width: 117,
                padding: const EdgeInsets.all(14),
                margin: const EdgeInsets.only(left: 13, top: 13, bottom: 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(255, 255, 255, 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.aspect_ratio_rounded,
                      size: 25,
                      color: Color.fromRGBO(90, 90, 90, 1),
                    ),
                    Text(
                      "Square ft",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(90, 90, 90, 1)),
                    ),
                    Text(
                      "7,000 sq ft",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
