import 'package:expense_manager/categories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'transaction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 24,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 12, right: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 43,
                      width: 43,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(0, 174, 91, 0.7),
                          shape: BoxShape.circle),
                      child: Image.asset(
                        "assets/Vector.png",
                        height: 41,
                        width: 41,
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Medicine",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.remove_circle,
                          size: 24,
                          color: Color.fromRGBO(246, 113, 49, 1),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "500",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "3 june | 11:50Am",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  )
                ],
              ),
              const Divider(),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {
          homeScreen();
        },
        label: const Text("Add Transaction"),
        icon: const Icon(
          Icons.add_circle_outlined,
          color: Color.fromRGBO(14, 161, 125, 1),
          size: 32,
          shadows: [
            BoxShadow(
                blurRadius: 4,
                spreadRadius: 0,
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurStyle: BlurStyle.outer)
          ],
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
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
                onTap: () {},
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
                onTap: () {},
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
                        "Subtract",
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
      ),
    );
  }

  void homeScreen() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              top: 34,
              left: 22,
              right: 22,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Date",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: "date",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                "Ammount",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: "500",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                "category",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: "shapping",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                "Description",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: "Lorem Ipsum is simply dummy text of the ",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                    shadowColor: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              )
            ],
          ),
        );
      },
    );
  }
}
