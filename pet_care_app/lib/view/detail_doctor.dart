import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/boillerplate.dart';

class DoctorDetailPage extends StatefulWidget {
  const DoctorDetailPage({super.key});

  @override
  State createState() => _DoctorDetailPageState();
}

class _DoctorDetailPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(245, 254, 156, 69),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
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
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 16,
                        offset: Offset(0, 8),
                        spreadRadius: -4,
                        color: Color.fromRGBO(22, 34, 51, 0.08))
                  ]),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 13,
                color: Color.fromRGBO(245, 146, 69, 1),
              ),
            )),
        centerTitle: true,
        title: Text(
          "Veterinary",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: const Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 14,
          ),
          Container(
            height: 200,
            width: double.infinity,
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 6, bottom: 6),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage("assets/doctordetail/doctor_detail.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        "Dr. Anna Jhonason",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        "Veterinary Behavioral",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 105,
                            // height: 65,
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 8, bottom: 8),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      spreadRadius: 0,
                                      blurRadius: 25,
                                      offset: Offset(0, 11),
                                      color: Color.fromRGBO(22, 34, 51, 0.08))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Experience",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color:
                                          const Color.fromRGBO(31, 32, 41, 1)),
                                ),
                                Text(
                                  "11 years",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: const Color.fromRGBO(
                                          245, 146, 69, 1)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 105,
                            // height: 65,
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 8, bottom: 8),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      spreadRadius: 0,
                                      blurRadius: 25,
                                      offset: Offset(0, 11),
                                      color: Color.fromRGBO(22, 34, 51, 0.08))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Price",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color:
                                          const Color.fromRGBO(31, 32, 41, 1)),
                                ),
                                Text(
                                  "\$250",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: const Color.fromRGBO(
                                          245, 146, 69, 1)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 105,
                            // height: 65,
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 8, bottom: 8),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      spreadRadius: 0,
                                      blurRadius: 25,
                                      offset: Offset(0, 11),
                                      color: Color.fromRGBO(22, 34, 51, 0.08))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Location",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color:
                                          const Color.fromRGBO(31, 32, 41, 1)),
                                ),
                                Text(
                                  "2.5 Km",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: const Color.fromRGBO(
                                          245, 146, 69, 1)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        "About",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        "Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.8,
                            color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        children: [
                          Text(
                            "Available Days",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.calendar_today_outlined,
                            size: 16,
                            color: Color.fromRGBO(245, 146, 69, 1),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "October, 2023",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color.fromRGBO(0, 0, 0, 0.4)),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      // padding: const EdgeInsets.only(left: 25, right: 25),
                      width: double.infinity,
                      height: 36,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(left: 25),
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: Container(
                                width: 68,
                                height: 36,
                                padding: const EdgeInsets.only(
                                    top: 8, bottom: 8, left: 16, right: 16),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: Text(
                                  "Fri, 6",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color:
                                          const Color.fromRGBO(49, 29, 14, 1)),
                                )),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        "Available Time",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      // padding: const EdgeInsets.only(left: 25, right: 25),
                      width: double.infinity,
                      height: 36,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(left: 25),
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: Container(
                                width: 70,
                                height: 36,
                                padding: const EdgeInsets.only(
                                    top: 8, bottom: 8, left: 16, right: 16),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: Text(
                                  "09.00",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color:
                                          const Color.fromRGBO(49, 29, 14, 1)),
                                )),
                          );
                        },
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                        ),
                        height: 35,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(252, 219, 193, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.map_outlined,
                              color: Color.fromRGBO(163, 97, 46, 1),
                              size: 12,
                            ),
                            Text(
                              "See Location",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: const Color.fromRGBO(163, 97, 46, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return const Dashboard();
                        //     },
                        //   ),
                        // );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                        ),
                        height: 35,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(245, 146, 69, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Book Now",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return const Dashboard();
                        //     },
                        //   ),
                        // );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
