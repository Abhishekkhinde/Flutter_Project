import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  Scaffold isHomeScreen() {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(225, 246, 254, 1),
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Vivek",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Where to Next?",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600)),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: const Icon(
                  Icons.history,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Trending Destinations",
              style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600)),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),

                  //  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 200,
                          width: 250,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(131, 189, 243, 1),
                                blurRadius: 10,
                                offset: Offset(5, 5),
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/1.jpg",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "location 1",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 200,
                          width: 250,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(131, 189, 243, 1),
                                  blurRadius: 10,
                                  blurStyle: BlurStyle.outer),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/2.jpg",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "location 2",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 200,
                          width: 250,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 25, 131, 212),
                                  blurRadius: 20,
                                  blurStyle: BlurStyle.outer),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/3.jpg",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "location 3",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Trending Destinations",
              style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600)),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 250,
                          width: 300,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(131, 189, 243, 1),
                                  blurRadius: 10,
                                  blurStyle: BlurStyle.outer),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/5.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "location name 4",
                        style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 250,
                          width: 300,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(131, 189, 243, 1),
                                  blurRadius: 10,
                                  blurStyle: BlurStyle.outer),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/6.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "location name 5",
                        style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 250,
                          width: 300,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(131, 189, 243, 1),
                                  blurRadius: 10,
                                  blurStyle: BlurStyle.outer),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/9.jpg",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "location 6",
                        style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isHomeScreen();
  }
}
