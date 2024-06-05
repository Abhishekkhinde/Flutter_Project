import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/boiller_plate.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List discographyImage = [
    "assets/32.png",
    "assets/38.png",
    "assets/39.png",
  ];
  List popularImage = [
    "assets/34.png",
    "assets/40.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      bottomNavigationBar: const BottomNavi(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 22, bottom: 64),
              alignment: Alignment.bottomLeft,
              width: 459,
              height: 360,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/gal1.png"),
                    fit: BoxFit.fill,
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(20, 20),
                        blurRadius: 20,
                        spreadRadius: 19,
                        blurStyle: BlurStyle.inner,
                        color: Color.fromRGBO(24, 24, 24, 1))
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "A.L.O.N.E",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(132, 37),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19)),
                          backgroundColor: const Color.fromRGBO(255, 46, 0, 1)),
                      onPressed: () {},
                      child: Text(
                        "Subscribe",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(24, 24, 24, 1),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 70,
                    spreadRadius: 80,
                    blurStyle: BlurStyle.solid,
                    // offset: Offset(50, 100),
                    color: Color.fromRGBO(24, 24, 24, 0.5),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 7,
                    width: 21,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      color: Color.fromRGBO(255, 61, 0, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Discography",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(255, 46, 0, 1),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(248, 162, 69, 1),
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: discographyImage.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 119,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage(discographyImage[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Dead inside",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color.fromRGBO(203, 200, 200, 1),
                            ),
                          ),
                          Text(
                            "2020",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: const Color.fromRGBO(203, 200, 200, 1),
                            ),
                          ),
                        ]),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Popular singles",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(203, 200, 200, 1),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(248, 162, 69, 1),
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: popularImage.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 17, right: 25, top: 7, bottom: 7),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 72,
                          width: 67,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(popularImage[index]),
                                fit: BoxFit.fill),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "We Are Chaos",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "2020",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color:
                                        const Color.fromRGBO(132, 125, 125, 1),
                                  ),
                                ),
                                Text(
                                  " * ",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(132, 125, 125, 1),
                                  ),
                                ),
                                Text(
                                  "Easy Living",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color:
                                        const Color.fromRGBO(132, 125, 125, 1),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          size: 40,
                          color: Color.fromRGBO(217, 217, 217, 1),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
