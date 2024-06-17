import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroomingScreen extends StatefulWidget {
  const GroomingScreen({super.key});

  @override
  State createState() => _GroomingScreenState();
}

class _GroomingScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 6.5),
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(245, 146, 69, 1),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 16,
                      offset: Offset(0, 8),
                      spreadRadius: -8,
                    )
                  ]),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 13,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            )),
        centerTitle: true,
        title: Text(
          "Grooming",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: const Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 16,
                        spreadRadius: -4,
                        offset: Offset(0, 8),
                        color: Color.fromRGBO(22, 34, 51, 0.08)),
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "60% OFF",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: const Color.fromRGBO(245, 245, 247, 1),
                          ),
                        ),
                        Text(
                          "On hair & spa treatment",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(245, 245, 247, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 91,
                    height: 77,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/veternary/veternary1.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 40,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(250, 200, 162, 1),
                ),
              ),
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1)),
                  hintText: 'search',
                  border: InputBorder.none,
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 22,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  "Our Services",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "See All",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(194, 195, 204, 1)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                                spreadRadius: -4,
                                blurRadius: 16,
                                offset: Offset(0, 8))
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: 105,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/grooming_image/groomin1.png"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(22, 34, 51, 0.08),
                                      spreadRadius: -4,
                                      blurRadius: 16,
                                      offset: Offset(0, 8))
                                ]),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Expanded(
                            child: Text(
                              "Bathing & Drying",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(49, 29, 14, 1)),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
