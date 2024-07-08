import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPayScreen extends StatefulWidget {
  const CardPayScreen({super.key});

  @override
  State<CardPayScreen> createState() => _CardPayScreenState();
}

class _CardPayScreenState extends State<CardPayScreen> {
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
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 40, bottom: 33),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 210,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(39, 6, 133, 1),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 24,
                        offset: Offset(0, 16),
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Abhishek Khinde",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          Text(
                            "****8923",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "Balance",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(230, 221, 255, 1),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$2,354",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 21,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/card/wifi.png"),
                            height: 18,
                            width: 18,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image(
                      image: AssetImage("assets/card/Ellipse1 card.png"),
                      height: 162,
                      width: 162,
                      fit: BoxFit.fill),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image(
                    image: AssetImage("assets/card/Ellipse2 card.png"),
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 125,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(125),
                            topRight: Radius.circular(125)),
                        color: Color.fromRGBO(111, 69, 233, 0.2),
                      ),
                    )),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              "assets/card/wifi.png",
              height: 18,
              width: 18,
              fit: BoxFit.fill,
              color: Color.fromRGBO(120, 131, 141, 1),
            ),
            SizedBox(
              height: 6,
            ),
            Expanded(
              child: Text(
                "Move near a device to pay",
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color.fromRGBO(120, 131, 141, 1),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
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
                  color: Color.fromRGBO(87, 50, 191, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.qr_code,
                      size: 20,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "QR Pay",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
