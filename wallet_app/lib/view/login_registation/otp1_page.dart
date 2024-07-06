import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/main_page/home_page.dart';

class Otp1Screen extends StatefulWidget {
  const Otp1Screen({super.key});

  @override
  State<Otp1Screen> createState() => _Otp1ScreenState();
}

class _Otp1ScreenState extends State<Otp1Screen> {
  bool otp = false;

  @override
  void initState() {
    super.initState();
    otp = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        centerTitle: true,
        title: Image.asset(
          "assets/icon.png",
          fit: BoxFit.fill,
          height: 24,
          width: 88,
        ),
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            padding: EdgeInsets.only(left: 35, right: 35),
            child: Text(
              "An SMS sent to your mobile number +962 79 XXX-XXXX",
              textAlign: TextAlign.center,
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: const Color.fromRGBO(25, 25, 25, 1),
              ),
            ),
          ),
          Text(
            "Enter six-digit code",
            textAlign: TextAlign.center,
            style: GoogleFonts.sora(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: const Color.fromRGBO(120, 131, 141, 1),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          otp
              ? Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 30, right: 30),
                  padding: EdgeInsets.only(left: 85, right: 85, top: 5),
                  child: TextField(
                    cursorHeight: 36,
                    style: GoogleFonts.sora(
                        fontSize: 36,
                        color: Color.fromRGBO(25, 25, 25, 1),
                        fontWeight: FontWeight.w400),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "XXX-XXX",
                      hintStyle: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 36,
                        color: Color.fromRGBO(186, 194, 199, 1),
                      ),
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                    ],
                  ),
                )
              : Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 30, right: 30),
                  padding: EdgeInsets.only(left: 65, right: 65, top: 5),
                  child: TextField(
                    cursorHeight: 36,
                    style: GoogleFonts.sora(
                        fontSize: 36,
                        color: Color.fromRGBO(25, 25, 25, 1),
                        fontWeight: FontWeight.w400),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "XXX-XXX",
                      suffixIcon: Icon(
                        Icons.check_circle_outline,
                        size: 36,
                        color: Color.fromRGBO(77, 166, 107, 1),
                      ),
                      hintStyle: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 36,
                        color: Color.fromRGBO(186, 194, 199, 1),
                      ),
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                    ],
                  ),
                ),
          const SizedBox(
            height: 24,
          ),
          otp
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Resend Code",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "00:00",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(120, 131, 141, 1),
                      ),
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Resend Code",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "00:00",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(25, 25, 25, 1),
                      ),
                    )
                  ],
                ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }));
            },
            child: Container(
              height: 45,
              margin: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
              alignment: Alignment.center,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                  color: Color.fromRGBO(87, 50, 191, 1)),
              child: Text(
                "Done",
                textAlign: TextAlign.center,
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
