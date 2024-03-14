import 'dart:math';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});
  @override
  State createState() => _BookScreenState();
}

class _BookScreenState extends State {
  int seat = 0;

  Scaffold destinationBook() {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(225, 246, 254, 1),
        body: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 425,
                width: double.infinity,
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 25, 131, 212),
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage("assets/2.jpg"), fit: BoxFit.fill),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "location 1",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "ammount300",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                        ),
                        Text(
                          "country name",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 40,
                          color: Colors.yellow,
                        ),
                        Column(
                          children: [
                            Text(
                              "Ratting",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Text(
                              "5/5",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.home,
                          size: 35,
                          color: Colors.red,
                        ),
                        Column(
                          children: [
                            Text(
                              "Restaurants",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Text(
                              "120 Awail.",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 250,
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Text(
                      "dat a  msdovidoi riogjioewiwojgi tihoj toihj oi oh  jii ijt ojo io hituhish hs gdugi   d u  rhitguhgiuu whu h gi uhtiguuhtruhgt htu hturh tr hittuuhghutgrutiugiukjgj jfgdjsfvkndfsg  ndgsjdfsj gndfsjgsdgn dsjfgvd vin difd jxnjldsn jn jikfdgsnijdsnfigkj u njds bnjdkngiujksdj njdkff sjknsdiuczg  ",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                )),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 115,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (seat >= 0) {
                                --seat;
                              }
                              setState(() {});
                            },
                            icon: const Icon(Icons.remove),
                          ),
                          Text('$seat'),
                          IconButton(
                            onPressed: () {
                              ++seat;
                              setState(() {});
                            },
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(
                        right: 20,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(250, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: Color.fromRGBO(23, 192, 193, 1)),
                        onPressed: () {},
                        child: Text(
                          "Book Now",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return destinationBook();
  }
}
