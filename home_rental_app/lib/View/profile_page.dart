import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/View/about_page.dart';
import 'package:home_rental_app/View/history_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),

        // backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              "Profile",
              style: GoogleFonts.inter(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/profile.jpg"),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Abhishek Khinde",
              style: GoogleFonts.inter(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            Text(
              "@abhishekkhinde",
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 8, right: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
              child: Text(
                "Edit",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text(
            //             "37",
            //             style: GoogleFonts.inter(
            //               fontSize: 14,
            //               fontWeight: FontWeight.w400,
            //               color: const Color.fromRGBO(0, 0, 0, 1),
            //             ),
            //           ),
            //           Text(
            //             "Saves",
            //             style: GoogleFonts.inter(
            //               fontSize: 14,
            //               fontWeight: FontWeight.w400,
            //               color: const Color.fromRGBO(0, 0, 0, 1),
            //             ),
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           Text(
            //             "24",
            //             style: GoogleFonts.inter(
            //               fontSize: 14,
            //               fontWeight: FontWeight.w400,
            //               color: const Color.fromRGBO(0, 0, 0, 1),
            //             ),
            //           ),
            //           Text(
            //             "favourite",
            //             style: GoogleFonts.inter(
            //               fontSize: 14,
            //               fontWeight: FontWeight.w400,
            //               color: const Color.fromRGBO(0, 0, 0, 1),
            //             ),
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           Text(
            //             "4206",
            //             style: GoogleFonts.inter(
            //               fontSize: 14,
            //               fontWeight: FontWeight.w400,
            //               color: const Color.fromRGBO(0, 0, 0, 1),
            //             ),
            //           ),
            //           Text(
            //             "Followers",
            //             style: GoogleFonts.inter(
            //               fontSize: 14,
            //               fontWeight: FontWeight.w400,
            //               color: const Color.fromRGBO(0, 0, 0, 1),
            //             ),
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           Text(
            //             "150",
            //             style: GoogleFonts.inter(
            //               fontSize: 14,
            //               fontWeight: FontWeight.w400,
            //               color: const Color.fromRGBO(0, 0, 0, 1),
            //             ),
            //           ),
            //           Text(
            //             "Following",
            //             style: GoogleFonts.inter(
            //               fontSize: 14,
            //               fontWeight: FontWeight.w400,
            //               color: const Color.fromRGBO(0, 0, 0, 1),
            //             ),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, CupertinoPageRoute(
                          builder: (context) {
                            return const HistoryScreen();
                          },
                        ));
                      },
                      child: Text(
                        "History",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Notifications",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Connected Services",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const AboutScreen();
                          },
                        ));
                      },
                      child: Text(
                        "About Us",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Logout",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 255, 0, 0),
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // const Divider(
                    //   height: 1,
                    //   thickness: 1,
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                  ],
                ))
          ],
        ));
  }
}
