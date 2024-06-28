import 'package:bicycle_app/view/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 80,
        width: 50,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 19),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(36, 44, 59, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 15, left: 10, right: 10, top: 10),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 76, 167, 247),
                    Color.fromRGBO(75, 76, 237, 1),
                  ], stops: [
                    0.0,
                    1.0
                  ]),
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(13),
                  ),
                ),
                height: double.infinity,
                width: 50,
                child: Image.asset(
                  "assets/botton_navigation/1.png",
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 15, left: 10, right: 10, top: 10),
                height: double.infinity,
                width: 50,
                child: Image.asset(
                  "assets/botton_navigation/2.png",
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 15, left: 10, right: 10, top: 10),
                height: double.infinity,
                width: 50,
                child: Image.asset(
                  "assets/botton_navigation/3.png",
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 15, left: 10, right: 10, top: 10),
                height: double.infinity,
                width: 50,
                child: Image.asset(
                  "assets/botton_navigation/4.png",
                  height: 40,
                  width: 40,
                ),
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
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
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Choose Your Bicycle",
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
                    Container(
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
                          "assets/search_home.png",
                        ),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 240,
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 2, right: 9, left: 3),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        offset: Offset(4, 7),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(53, 63, 84, 0.6),
                      Color.fromRGBO(34, 40, 52, 0.6),
                    ]),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onDoubleTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const DetailScreen();
                            }),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/bicycle/1.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Text(
                              "EXTREME",
                              style: GoogleFonts.allertaStencil(
                                fontWeight: FontWeight.w400,
                                fontSize: 32,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Spacer(),
                          Expanded(
                            child: Text(
                              "30% OFF",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 32,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              strokeAlign: BorderSide.strokeAlignInside,
                              color: const Color.fromRGBO(255, 255, 255, 0.2)),
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                            Color.fromRGBO(73, 84, 237, 1),
                            Color.fromRGBO(75, 76, 237, 1)
                          ]),
                        ),
                        child: const Image(
                          image: AssetImage(
                            "assets/item_image/item1.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 28,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              strokeAlign: BorderSide.strokeAlignInside,
                              color: const Color.fromRGBO(0, 0, 0, 0.2)),
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(161, 161, 161, 1),
                          ]),
                        ),
                        child: const Image(
                          image: AssetImage(
                            "assets/item_image/item2.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 28,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              strokeAlign: BorderSide.strokeAlignInside,
                              color: const Color.fromRGBO(0, 0, 0, 0.2)),
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(161, 161, 161, 1),
                          ]),
                        ),
                        child: const Image(
                          image: AssetImage(
                            "assets/item_image/item3.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 28,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              strokeAlign: BorderSide.strokeAlignInside,
                              color: const Color.fromRGBO(0, 0, 0, 0.2)),
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(161, 161, 161, 1),
                          ]),
                        ),
                        child: const Image(
                          image: AssetImage(
                            "assets/item_image/item4.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 17,
                            crossAxisSpacing: 17,
                            childAspectRatio: 3 / 4),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DetailScreen();
                          }));
                        },
                        child: Container(
                          // height: 50,
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                strokeAlign: BorderSide.strokeAlignInside,
                                color:
                                    const Color.fromRGBO(255, 255, 255, 0.2)),
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(53, 63, 84, 0.6),
                              Color.fromRGBO(34, 40, 52, 0.6),
                            ]),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/bicycle/2.png",
                                  ),
                                  Text(
                                    "Kiross",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                    ),
                                  ),
                                  Text(
                                    "\$1,599.99",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: const Color.fromRGBO(
                                          195, 195, 195, 1),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 120,
                                child: Text(
                                  "30% OFF",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color:
                                        const Color.fromRGBO(195, 195, 195, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
