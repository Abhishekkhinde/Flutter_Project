import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/main.dart';
import 'package:travel_app/paymentScreen.dart';
import 'destinationDetail.dart';

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
          child: ListView(
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 10,
                  top: 20,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                height: 425,
                width: double.infinity,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 25, 131, 212),
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer),
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(popularDestination[inde].image),
                      fit: BoxFit.fill),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 225, 217, 217),
                        size: 30,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          popularDestination[inde].locationName,
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "${popularDestination[inde].ticketAmmount}",
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
                          "${popularDestination[inde].contryName}",
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
                              "${popularDestination[inde].ratting}/5",
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
                              "${popularDestination[inde].restaurantAwail} Awail.",
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
                height: 225,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Text(
                      '${popularDestination[inde].description}',
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
                              if (seat > 0) {
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
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor:
                                const Color.fromRGBO(23, 192, 193, 1)),
                        onPressed: () {
                          totalseat = seat;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Payment()));
                        },
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
