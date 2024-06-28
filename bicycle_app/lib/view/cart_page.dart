import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(transform: GradientRotation(20), stops: [
              0.6,
              0.4
            ], colors: [
              Color.fromRGBO(34, 40, 52, 1),
              Color.fromRGBO(20, 20, 20, 1),
            ]),
          ),
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              "EXTREME",
              textAlign: TextAlign.center,
              style: GoogleFonts.allertaStencil(
                  fontWeight: FontWeight.w500,
                  fontSize: 140,
                  color: const Color.fromRGBO(255, 255, 255, 0.1)),
            ),
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color.fromRGBO(34, 40, 52, 0.6),
        ),
        Column(children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "My Shopping Cart",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(55, 182, 233, 1),
                        Color.fromRGBO(72, 92, 236, 1),
                        Color.fromRGBO(75, 76, 237, 1)
                      ]),
                    ),
                    child: const Image(
                      image: AssetImage(
                        "assets/back (2).png",
                      ),
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 17,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 30),
                        child: Row(
                          children: [
                            Container(
                              height: 108,
                              width: 130,
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color.fromRGBO(53, 63, 84, 0.6),
                                  Color.fromRGBO(34, 40, 52, 0)
                                ]),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.1),
                                ),
                              ),
                              child: Image.asset(
                                "assets/bicycle/3.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 17,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "GT Bike",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 25,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "2,599.99",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: const Color.fromRGBO(
                                              55, 182, 233, 1),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 5,
                                            top: 4,
                                            bottom: 4),
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                30, 30, 30, 0.8),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            boxShadow: const [
                                              BoxShadow(
                                                  blurRadius: 1,
                                                  offset: Offset(0, 1),
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.5))
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                alignment: Alignment.topCenter,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        const LinearGradient(
                                                            colors: [
                                                          Color.fromRGBO(
                                                              55, 182, 233, 1),
                                                          Color.fromRGBO(
                                                              75, 76, 237, 1)
                                                        ])),
                                                child: const Icon(
                                                  Icons.add,
                                                  size: 20,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  weight: 600,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "1",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                padding: const EdgeInsets.only(
                                                    bottom: 2, right: 5),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        const LinearGradient(
                                                            colors: [
                                                          Color.fromRGBO(255,
                                                              255, 255, 0.8),
                                                          Color.fromRGBO(195,
                                                              195, 195, 0.2)
                                                        ])),
                                                child: const Icon(
                                                  Icons.remove,
                                                  size: 20,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 0.5),
                                                  weight: 600,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      const Divider(
                        color: Color.fromRGBO(255, 255, 255, 0.2),
                        thickness: 2,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Text(
            "Your Bag Qualifies for Free Shipping",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 15,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            padding:
                const EdgeInsets.only(left: 7, top: 3, right: 3, bottom: 3),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(36, 44, 59, 0.6),
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(0, 0, 0, 0.3),
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "6Affg5",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: const Color.fromRGBO(142, 142, 142, 1),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    width: 137,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                            Color.fromRGBO(75, 76, 237, 1),
                          ],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 4,
                            offset: Offset(5, 5),
                          )
                        ]),
                    child: Text(
                      "Apply",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Text(
                      "\$2,841.99",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color.fromRGBO(55, 182, 233, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery fee",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Text(
                      "\$0",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color.fromRGBO(55, 182, 233, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discount",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Text(
                      "30%",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color.fromRGBO(55, 182, 233, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Text(
                      "\$1,989.37",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color.fromRGBO(55, 182, 233, 1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 30,
                  width: 30,
                  // padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(55, 182, 233, 1),
                      Color.fromRGBO(72, 92, 236, 1),
                    ]),
                  ),
                  child: const Image(
                    image: AssetImage(
                      "assets/arrow.png",
                    ),
                    fit: BoxFit.fill,
                    height: 21,
                    width: 21,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Check Out",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ],
          )
        ])
      ]),
    );
  }
}
