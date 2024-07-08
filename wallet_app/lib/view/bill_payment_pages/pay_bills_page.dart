import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayBillsScreen extends StatefulWidget {
  const PayBillsScreen({super.key});

  @override
  State<PayBillsScreen> createState() => _PayBillsScreenState();
}

class _PayBillsScreenState extends State<PayBillsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_back_ios,
                size: 12,
                color: Color.fromRGBO(29, 98, 202, 1),
              ),
              Text(
                "Back",
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color.fromRGBO(29, 98, 202, 1),
                ),
              ),
            ],
          ),
        ),
        leadingWidth: 70,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pay to",
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(230, 221, 255, 1),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Color.fromRGBO(87, 50, 191, 1),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "New biller",
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(25, 25, 25, 1),
                ),
              ),
            ]),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Divider(
                      color: Color.fromRGBO(237, 239, 246, 1),
                      thickness: 1,
                      height: 1),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "or",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(120, 131, 141, 1),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Divider(
                      color: Color.fromRGBO(237, 239, 246, 1),
                      thickness: 1,
                      height: 1),
                )
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Color.fromRGBO(225, 227, 237, 1),
                  width: 1,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search biller",
                    hintStyle: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromRGBO(186, 194, 199, 1),
                    ),
                    icon: Image.asset(
                      "assets/search.png",
                      height: 17,
                      width: 17,
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Saved billers",
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: const Color.fromRGBO(83, 93, 102, 1),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                          child: GestureDetector(
                            onTap: () {
                              bottomNaviBarBill();
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/paybills.png"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                const SizedBox(width: 3),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Electricity",
                                      style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color:
                                            const Color.fromRGBO(25, 25, 25, 1),
                                      ),
                                    ),
                                    Text(
                                      "Due: \$132.32",
                                      style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color.fromRGBO(
                                            83, 93, 102, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Color.fromRGBO(83, 93, 102, 1),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          height: 1,
                          thickness: 1,
                          color: Color.fromRGBO(237, 239, 246, 1),
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Future<void> bottomNaviBarBill() async {
    await showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        context: context,
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
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage("assets/paybills.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(width: 3),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Electricity",
                                style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(25, 25, 25, 1),
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Done",
                                  style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: const Color.fromRGBO(29, 98, 202, 1),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Utility",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color.fromRGBO(83, 93, 102, 1),
                            ),
                          ),
                        ],
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
                      Text(
                        "Due: \$132.32",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 21,
                          color: Color.fromRGBO(184, 50, 50, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
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
                        "Due date",
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
                            "Registration no.",
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();

                    // Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //   return const HomeScreen();
                    // }));
                  },
                  child: Container(
                    height: 45,
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                      color: Color.fromRGBO(253, 194, 40, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("assets/secure_pay.png"),
                          height: 20,
                          width: 20,
                          color: Color.fromRGBO(39, 6, 133, 1),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Secure payment",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color.fromRGBO(39, 6, 133, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40)
              ],
            ),
          );
        });
  }
}
