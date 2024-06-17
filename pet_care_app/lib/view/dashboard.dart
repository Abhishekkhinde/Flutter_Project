import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/boillerplate.dart';
import 'package:pet_care_app/view/grooming_page.dart';
import 'package:pet_care_app/view/notification_page.dart';
import 'package:pet_care_app/view/shop_page.dart';
import 'package:pet_care_app/view/training_page.dart';
import 'package:pet_care_app/view/veterinary_Screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State createState() => _DashboardState();
}

class _DashboardState extends State {
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
                  Container(
                    height: 56,
                    width: 56,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/dash1.png"))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Sarah",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      Text(
                        "Good Morning!",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const NotificationPage();
                      }));
                    },
                    icon: const Icon(
                      Icons.notifications_none,
                      size: 24,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  )
                ],
              ),
              Container(
                height: 36,
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
                child: TextField(
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
                      color: Color.fromRGBO(
                        245,
                        146,
                        69,
                        1,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "In Love With Pets?",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        Text(
                          "Get all what you need for them",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: const Color.fromRGBO(
                              245,
                              146,
                              69,
                              1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 71,
                      height: 67,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/dash2.png"),
                              fit: BoxFit.fill)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Text(
                    "Category",
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
                height: 18,
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
                              image: AssetImage("assets/category1.png"),
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
                        "Veterinary",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
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
                              image: AssetImage("assets/category2.png"),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const GroomingScreen();
                            },
                          ));
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Grooming",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
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
                              image: AssetImage("assets/category3.png"),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ShopScreen();
                              },
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Pet Store",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
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
                              image: AssetImage("assets/category4.png"),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const TrainingScreen();
                              },
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Training",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                "Event",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
              const SizedBox(height: 18),
              Container(
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
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Find and Join in Special Events For Your Pets!",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                fixedSize: const Size(110, 34),
                                backgroundColor:
                                    const Color.fromRGBO(245, 146, 69, 1)),
                            onPressed: () {},
                            child: Text(
                              "See More",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/dashevent.png"),
                              fit: BoxFit.fill)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                "Community",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
              const SizedBox(height: 18),
              Container(
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
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Connect and share with communities! ",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                fixedSize: const Size(110, 34),
                                backgroundColor:
                                    const Color.fromRGBO(245, 146, 69, 1)),
                            onPressed: () {},
                            child: Text(
                              "See More",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/dash community.png"),
                              fit: BoxFit.fill)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
