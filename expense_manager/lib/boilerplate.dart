import 'package:expense_manager/categories.dart';
import 'package:expense_manager/graphscreen.dart';
import 'package:expense_manager/trashpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'transaction_screen.dart';

class Mydawer extends StatelessWidget {
  const Mydawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Text(
                    "Expense Manager",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                  Text(
                    "Saves all your Transactions",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                height: 40,
                width: 184,
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(14, 161, 125, 0.15)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Subtract.png",
                      height: 17,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Transaction",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                height: 40,
                width: 184,
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Graphs.png",
                      height: 17,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Graphs",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GraphScreen(),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                height: 40,
                width: 184,
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Category.png",
                      height: 17,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Category",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoriesScreen(),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                height: 40,
                width: 184,
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Subtract.png",
                      height: 17,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Trash",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrashScreen(),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                height: 40,
                width: 184,
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Aboutus.png",
                      height: 17,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      "About us",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
