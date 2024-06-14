import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/boillerplate.dart';
import 'package:pet_care_app/view/notification_page.dart';

class VeterinaryScreen extends StatefulWidget {
  const VeterinaryScreen({super.key});

  @override
  State createState() => _VeterinaryScreenState();
}

class _VeterinaryScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const FloatingButton(),
        bottomNavigationBar: const BottomNavi(),
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 35,
          ),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 16,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "London, UK",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color.fromRGBO(194, 195, 204, 1)),
                  )
                ],
              ),
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
                            "Lets Find Specialist Doctor for Your Pet!",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: const Color.fromRGBO(255, 255, 255, 1),
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
                            image:
                                AssetImage("assets/veternary/veternary1.png"),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 54,
                          width: 54,
                          margin: const EdgeInsets.only(
                            left: 3.5,
                            right: 3.5,
                            top: 1,
                          ),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/veternary/Vaccinations.png"),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const VeterinaryScreen();
                            },
                          ));
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Vaccinations",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(245, 146, 69, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 54,
                          width: 54,
                          margin: const EdgeInsets.only(
                            left: 3.5,
                            right: 3.5,
                            top: 1,
                          ),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/veternary/Operations.png"),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Operations",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(245, 146, 69, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 54,
                          width: 54,
                          margin: const EdgeInsets.only(
                            left: 3.5,
                            right: 3.5,
                            top: 1,
                          ),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/veternary/Behaviorals.png"),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Behaviorals",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(245, 146, 69, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 54,
                          width: 54,
                          margin: const EdgeInsets.only(
                            left: 3.5,
                            right: 3.5,
                            top: 1,
                          ),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/veternary/Dentistry.png"),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Dentistry",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(245, 146, 69, 1)),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Best Specialists Nearby",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 16,
                                  spreadRadius: -4,
                                  offset: Offset(0, 8),
                                  color: Color.fromRGBO(22, 34, 51, 0.08)),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/veternary/doctori.png"),
                                      fit: BoxFit.fill)),
                            ),
                            // const SizedBox(
                            //   width: 13,
                            // ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 8, bottom: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dr. Anna Johanson",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                  Text(
                                    "Veterinary Behavioral",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.2)),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_outline_outlined,
                                        size: 16,
                                        color: Color.fromRGBO(248, 182, 131, 1),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "4.8",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              194, 195, 204, 1),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      const Icon(
                                        Icons.location_on_outlined,
                                        size: 16,
                                        color: Color.fromRGBO(248, 182, 131, 1),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "1 km",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              194, 195, 204, 1),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
        ));
  }
}
