import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/main_page/boiler_plate_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNaviBar(),
      // Container(
      //   height: 62,
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     border: Border(
      //       top: BorderSide(
      //         width: 1,
      //         color: Color.fromRGBO(225, 227, 237, 1),
      //       ),
      //     ),
      //   ),
      //   child: ListView.builder(
      //     itemCount: 4,
      //     physics: const NeverScrollableScrollPhysics(),
      //     scrollDirection: Axis.horizontal,
      //     padding: EdgeInsets.only(bottom: 8),
      //     itemBuilder: (context, index) {
      //       return Container(
      //         padding: EdgeInsets.only(left: 10, right: 10),
      //         child: InkWell(
      //           onTap: () {
      //             setState(
      //               () {
      //                 currentIndex = index;
      //               },
      //             );
      //           },
      //           // splashColor: Colors.transparent,
      //           // highlightColor: Colors.transparent,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Container(
      //                 // duration: Duration(milliseconds: 1500),
      //                 // curve: Curves.fastLinearToSlowEaseIn,
      //                 // margin: EdgeInsets.only(
      //                 //   bottom: index == currentIndex ? 2 : 0,
      //                 // ),
      //                 width: index == currentIndex ? size.width * .100 : 0,

      //                 height: 2,
      //                 decoration: BoxDecoration(
      //                   color: index == currentIndex
      //                       ? Color.fromRGBO(111, 69, 233, 1)
      //                       : Color.fromRGBO(255, 255, 255, 1),
      //                 ),
      //               ),
      //               Icon(
      //                 iconOfAppBar[index],
      //                 size: 24,
      //                 color: index == currentIndex
      //                     ? Color.fromRGBO(111, 69, 233, 1)
      //                     : Color.fromRGBO(83, 93, 102, 1),
      //               ),
      //               Text(
      //                 "Home",
      //                 style: GoogleFonts.sora(
      //                   fontWeight: FontWeight.w600,
      //                   fontSize: 12,
      //                   color: index == currentIndex
      //                       ? Color.fromRGBO(111, 69, 233, 1)
      //                       : Color.fromRGBO(83, 93, 102, 1),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 45),
            color: Color.fromRGBO(39, 6, 133, 1),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image:
                              AssetImage("assets/profile_pic/profile_pic.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        Text(
                          "Abhishek!",
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        )
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      child: Icon(
                        Icons.settings_outlined,
                        size: 20,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 32, right: 32, top: 24, bottom: 24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(80, 51, 164, 1),
                        Color.fromRGBO(51, 16, 152, 0.65)
                      ])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Main balance!",
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(178, 161, 228, 1)),
                      ),
                      Text(
                        "\$14,235.34",
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600,
                            fontSize: 36,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/topup_arrow.png",
                                height: 12,
                                width: 12,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Top up",
                                style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ],
                          ),
                          VerticalDivider(
                            color: Color.fromRGBO(111, 69, 233, 1),
                            width: 2,
                            thickness: 2,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/withdraw_arror.png",
                                height: 12,
                                width: 12,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Withdraw",
                                style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ],
                          ),
                          VerticalDivider(
                            color: Color.fromRGBO(111, 69, 233, 1),
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/transfer.png",
                                height: 12,
                                width: 12,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Transfer",
                                style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Text(
              "Recent Transfers",
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color.fromRGBO(25, 25, 25, 1),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(230, 221, 255, 1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            size: 14,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Add",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(25, 25, 25, 1),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    width: 500,
                    child: ListView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(left: 16),
                                  height: 64,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/profile_pic/profile_pic.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Ali",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(25, 25, 25, 1),
                                ),
                              )
                            ],
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latest Transactions",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(25, 25, 25, 1),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "View all",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(107, 107, 107, 1),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/transaction/latest_trans_1.png"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Walmart",
                                style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(25, 25, 25, 1),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Today",
                                    style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(120, 131, 141, 1),
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
                                      color: Color.fromRGBO(120, 131, 141, 1),
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
                            "\$430.00",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(40, 155, 79, 1),
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
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        color: Color.fromRGBO(237, 239, 246, 1),
                        thickness: 1,
                        height: 1,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
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
