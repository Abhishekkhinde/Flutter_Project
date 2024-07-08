import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wallet_app/view/login_registation/boiler_plate.dart';
import 'package:wallet_app/view/login_registation/create_account1.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool passwordVisible = false;

  bool forgateop1 = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(),
      backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              "assets/regi_image.png",
              height: 194,
              width: 156,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 93,
            ),
            Container(
              color: const Color.fromRGBO(255, 255, 255, 1),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(
                  left: 17, right: 17, top: 17, bottom: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter your password",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: TextField(
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(
                                () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            }),
                        hintText: "Enter your password",
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(186, 194, 199, 1)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromRGBO(225, 227, 237, 1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromRGBO(225, 227, 237, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromRGBO(225, 227, 237, 1),
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {
                            showbottomsheet();
                          },
                          child: Text(
                            "Forgot password?",
                            textAlign: TextAlign.end,
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: const Color.fromRGBO(29, 98, 202, 1),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 147,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const CreateAccountScreen1();
                        }),
                      );
                    },
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                          color: Color.fromRGBO(87, 50, 191, 1)),
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> showbottomsheet() async {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Forgot your password?",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Done",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(29, 98, 202, 1),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Email",
                textAlign: TextAlign.left,
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color.fromRGBO(25, 25, 25, 1),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "e.g. email@example.com",
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(186, 194, 199, 1)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(225, 227, 237, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(225, 227, 237, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(225, 227, 237, 1),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 45,
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                      color: Color.fromRGBO(87, 50, 191, 1)),
                  child: Text(
                    "Send reset link",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();

                        showbottomsheetmobile();
                      },
                      child: Text(
                        "Use mobile instead",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> showbottomsheetmobile() async {
    await showModalBottomSheet(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Forgot your password?",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Done",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(29, 98, 202, 1),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Mobile number",
                textAlign: TextAlign.left,
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color.fromRGBO(25, 25, 25, 1),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: "7X-XXXXXXX",
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(186, 194, 199, 1)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(225, 227, 237, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(225, 227, 237, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(225, 227, 237, 1),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  disableLengthCheck: true,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                  ],
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 45,
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                      color: Color.fromRGBO(87, 50, 191, 1)),
                  child: Text(
                    "Send reset link",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();

                        showbottomsheet();
                      },
                      child: Text(
                        "Use email instead",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        );
      },
    );
  }
}
