import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBar1 extends StatefulWidget implements PreferredSizeWidget {
  const AppBar1({super.key});

  @override
  State createState() => _AppBar1State();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBar1State extends State {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
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
    );
  }
}
