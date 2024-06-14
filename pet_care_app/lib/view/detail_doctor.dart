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
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Anna Jhonason",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    Text(
                      "Veterinary Behavioral",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(0, 0, 0, 0.4)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // width: 100,
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
                                    color: const Color.fromRGBO(31, 32, 41, 1)),
                              ),
                              Text(
                                "11 years",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1)),
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
                                    color: const Color.fromRGBO(31, 32, 41, 1)),
                              ),
                              Text(
                                "\$250",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // width: 100,
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
                                    color: const Color.fromRGBO(31, 32, 41, 1)),
                              ),
                              Text(
                                "2.5 Km",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
