import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
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
                color: const Color.fromRGBO(255, 255, 255, 1),
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
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/image.jpg"),
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
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ],
        ));
  }
}
