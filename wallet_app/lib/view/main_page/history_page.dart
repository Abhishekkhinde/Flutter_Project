import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/main_page/boiler_plate_main.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 239, 246, 1),
      bottomNavigationBar: BottomNaviBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              "History",
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color.fromRGBO(25, 25, 25, 1),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 233,
                  height: 37,
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(225, 227, 237, 1),
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Value goes here",
                      hintStyle: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(186, 194, 199, 1)),
                      icon: Image(
                        image: AssetImage("assets/search.png"),
                        height: 16,
                        width: 16,
                        color: Color.fromRGBO(25, 25, 25, 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(225, 227, 237, 1),
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/filter.png"),
                        height: 16,
                        width: 16,
                        color: Color.fromRGBO(25, 25, 25, 1),
                      ),
                      Text(
                        "Filter",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(25, 25, 25, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Text(
                        "Today",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color.fromRGBO(83, 93, 102, 1),
                        ),
                      ),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 12,
                      ),
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showBottomSheet();
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/transaction/nike.png"),
                                            fit: BoxFit.fill)),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nike",
                                        style: GoogleFonts.sora(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: Color.fromRGBO(25, 25, 25, 1),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Yesterday",
                                            style: GoogleFonts.sora(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  120, 131, 141, 1),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "12:32",
                                            style: GoogleFonts.sora(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  120, 131, 141, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.add,
                                    size: 12,
                                    color: Color.fromRGBO(40, 155, 79, 1),
                                  ),
                                  Text(
                                    "\$50.23",
                                    style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(184, 50, 50, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color.fromRGBO(83, 93, 102, 1),
                                      size: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Divider(
                              color: Color.fromRGBO(225, 226, 227, 1),
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                          ],
                        );
                      },
                    ),
                    Divider(
                      color: Color.fromRGBO(225, 226, 227, 1),
                      thickness: 6,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Future<void> showBottomSheet() async {
    await showModalBottomSheet(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      context: context,
      isDismissible: true,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage("assets/transaction/nike.png"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nike",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromRGBO(25, 25, 25, 1),
                        ),
                      ),
                      Text(
                        "Yesterday",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(120, 131, 141, 1),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Done",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromRGBO(29, 98, 202, 1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Container(
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 8),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(255, 246, 246, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: 21,
                      color: Color.fromRGBO(184, 50, 50, 1),
                    ),
                    Text(
                      "\$50.23",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 21,
                        color: Color.fromRGBO(184, 50, 50, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(229, 231, 232, 1)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Today",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(120, 131, 141, 1),
                      ),
                    ),
                    Text(
                      "December 29, 2022 - 12:32 ",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color.fromRGBO(83, 93, 102, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(229, 231, 232, 1)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Transaction no.",
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(120, 131, 141, 1),
                          ),
                        ),
                        Text(
                          "23010412432431",
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color.fromRGBO(83, 93, 102, 1),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.content_copy_rounded,
                      size: 20,
                      color: Color.fromRGBO(83, 93, 102, 1),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.flag_outlined,
                    size: 20,
                    color: Color.fromRGBO(184, 50, 50, 1),
                  ),
                  Text(
                    "Report a problem",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color.fromRGBO(184, 50, 50, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        );
      },
    );
  }
}
