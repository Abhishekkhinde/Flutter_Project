import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/View/all_view_screen.dart';
import 'package:home_rental_app/View/detail_page.dart';
import 'package:home_rental_app/Model/home_data_model.dart';
import 'package:home_rental_app/View/profile_page.dart';
import 'package:home_rental_app/View/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
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
                  "Hey Abhishek",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color.fromRGBO(101, 101, 101, 1)),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const ProfileScreen();
                    }),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 22),
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/profile.jpg"),
                        fit: BoxFit.fill),
                  ),
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
              keyboardType: TextInputType.none,
              textAlign: TextAlign.left,
              enabled: true,
              showCursor: false,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const SearchScreen();
                  }),
                );
              },
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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AllViewScreen(
                          homeData: popularHome, pagename: "Most popular");
                      // AllViewScreen(places: "Most popular");
                    },
                  ));
                },
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
                itemCount: popularHome.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(homeData: popularHome, index: index),
                          // DetailPage(),
                        ),
                      );
                    },
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image:
                                      AssetImage("${popularHome[index].image}"),
                                  fit: BoxFit.fill),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 27,
                                  width: 55,
                                  padding: const EdgeInsets.only(
                                      left: 8.5, top: 3.5, bottom: 3.5),
                                  margin:
                                      const EdgeInsets.only(right: 9, top: 9),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(112, 200, 250, 1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 17,
                                        color: Color.fromRGBO(251, 227, 12, 1),
                                      ),
                                      Text(
                                        "${popularHome[index].rating}",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            "${popularHome[index].villaName}",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "${popularHome[index].location}",
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
                                "\$${popularHome[index].ammout}",
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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AllViewScreen(
                          homeData: nearByHome,
                          pagename: "Nearby your location");
                    },
                  ));
                },
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
          SizedBox(
            height: heights * 0.13,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: nearByHome.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DetailPage(homeData: nearByHome, index: index);
                      },
                    ));
                  },
                  child: Container(
                    height: heights * 0.15,
                    width: widths * 0.88,
                    margin: const EdgeInsets.only(left: 22, right: 22),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                    padding: const EdgeInsets.only(
                        left: 9, right: 11, top: 10, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("${nearByHome[index].image}"),
                                fit: BoxFit.fill),
                          ),
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
                              "${nearByHome[index].villaName}",
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
                                    size: 14,
                                    color: Color.fromRGBO(90, 90, 90, 1)),
                                Text(
                                  "${nearByHome[index].location}",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11,
                                      color:
                                          const Color.fromRGBO(90, 90, 90, 1)),
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
                                    size: 15,
                                    color: Color.fromRGBO(90, 90, 90, 1)),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "${nearByHome[index].bedrooms} Bedrooms",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 9,
                                      color:
                                          const Color.fromRGBO(90, 90, 90, 1)),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                const Icon(Icons.bathtub_rounded,
                                    size: 15,
                                    color: Color.fromRGBO(90, 90, 90, 1)),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "${nearByHome[index].bathrooms} Bathrooms",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 9,
                                      color:
                                          const Color.fromRGBO(90, 90, 90, 1)),
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
                                  "\$${nearByHome[index].ammout}",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: const Color.fromRGBO(
                                          32, 169, 247, 1)),
                                ),
                                Text(
                                  '/Month',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color:
                                          const Color.fromRGBO(72, 72, 72, 1)),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
