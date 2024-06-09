import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/View/detail_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      body: ListView(
        children: [
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 22),
                child: Text(
                  "Hey Devid",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color.fromRGBO(101, 101, 101, 1)),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 22),
                height: 48,
                width: 48,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/2.png"), fit: BoxFit.fill),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 22, top: 22, right: 180),
            child: Text(
              "Let’s find your best residence ",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
          Container(
            height: 46,
            width: 346,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 16, right: 16),
            margin:
                const EdgeInsets.only(left: 22, right: 22, top: 22, bottom: 22),
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  hintText: "Search your favourite paradise",
                  hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: const Color.fromRGBO(33, 33, 33, 1)),
                  icon: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 22),
                  child: Text(
                    "Most popular",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  )),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See All",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(32, 169, 247, 1)),
                ),
              ),
              const SizedBox(
                width: 22,
              )
            ],
          ),
          SizedBox(
            height: 320,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(left: 22, top: 14),
                      height: 306,
                      width: 211,
                      padding: const EdgeInsets.only(
                          top: 11, left: 11, right: 11, bottom: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 196,
                            width: 189,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/nighthillvilla.png"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Night Hill Villa",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "London,Night Hill",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: const Color.fromRGBO(72, 72, 72, 1)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                "\$5900",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color:
                                        const Color.fromRGBO(32, 169, 247, 1)),
                              ),
                              Text(
                                '/Month',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(72, 72, 72, 1)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailPage(),
                        ),
                      );
                    },
                  );
                }),
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(
                    left: 22,
                  ),
                  child: Text(
                    "Nearby your location",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  )),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "More",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(32, 169, 247, 1)),
                ),
              ),
              const SizedBox(
                width: 22,
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 108,
            width: 346,
            margin: const EdgeInsets.only(left: 22, right: 22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(255, 255, 255, 1)),
            padding:
                const EdgeInsets.only(left: 9, right: 11, top: 10, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/8.png"))),
                ),
                const SizedBox(
                  width: 22,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Jumeriah Golf Estates Villa",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.location_on,
                            size: 14, color: Color.fromRGBO(90, 90, 90, 1)),
                        Text(
                          "London,Area Plam Jumeriah",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              color: const Color.fromRGBO(90, 90, 90, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.chair,
                            size: 15, color: Color.fromRGBO(90, 90, 90, 1)),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          "4 Bedrooms",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 9,
                              color: const Color.fromRGBO(90, 90, 90, 1)),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Icon(Icons.bathtub_rounded,
                            size: 15, color: Color.fromRGBO(90, 90, 90, 1)),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          "5 Bathrooms",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 9,
                              color: const Color.fromRGBO(90, 90, 90, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\$5900",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: const Color.fromRGBO(32, 169, 247, 1)),
                        ),
                        Text(
                          '/Month',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color.fromRGBO(72, 72, 72, 1)),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
