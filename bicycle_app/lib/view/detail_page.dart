import 'package:bicycle_app/view/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<dynamic> itemImage = [
    "assets/bicycle/1.png",
    "assets/bicycle/2.png",
    "assets/bicycle/3.png",
  ];

  int currentPageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 90,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
            color: Color.fromRGBO(36, 44, 59, 1),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                  blurRadius: 20,
                  offset: Offset(0, -8)),
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "\$2,599.99",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CartScreen();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 187,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(55, 182, 233, 1),
                      Color.fromRGBO(75, 76, 237, 1)
                    ],
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(255, 251, 251, 0.5),
                  ),
                ),
                child: Text(
                  "Buy Now",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
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
              Color.fromRGBO(75, 76, 237, 1),
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
                    "GT BIKE",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
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
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            items: itemImage.map((imageItem) {
              return SizedBox(
                  height: 380,
                  width: double.infinity,
                  child: Image.asset(
                    imageItem,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ));
            }).toList(),
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  currentPageindex = index;
                });
              },
              // autoPlay: true,
              height: 370,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < itemImage.length; i++)
                Container(
                  margin: const EdgeInsets.all(2),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPageindex == i
                        ? const Color.fromRGBO(0, 0, 0, 1)
                        : const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 25, top: 15, right: 23),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                border: Border(
                  top: BorderSide(
                    width: 2,
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                  ),
                  left: BorderSide(
                    width: 2,
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                  ),
                  right: BorderSide(
                    width: 2,
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                  ),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(53, 63, 84, 0.8),
                    Color.fromRGBO(34, 40, 52, 0.8),
                  ],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: 35,
                          // width: 105,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.5)),
                              color: const Color.fromRGBO(36, 44, 59, 1)),
                          child: Text(
                            "Description",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          // width: 105,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.5)),
                              color: const Color.fromRGBO(72, 92, 236, 1)),
                          child: Text(
                            "Specification",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia.",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
