import 'package:brand_store_app/view/boiler_plate.dart';
import 'package:brand_store_app/view/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NaviBar(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Image(
            image: AssetImage("assets/icon/menu.png"),
            color: Color.fromRGBO(13, 13, 14, 1),
            fit: BoxFit.fill,
            height: 20,
            width: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage("assets/icon/profile.png"),
              color: Color.fromRGBO(13, 13, 14, 1),
              fit: BoxFit.fill,
              height: 20,
              width: 20,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 35,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Text(
              "Explore",
              style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                  color: const Color.fromRGBO(13, 13, 14, 1)),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Text(
              "Best trendy collection!",
              style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: const Color.fromRGBO(121, 119, 128, 1)),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 22, right: 22, bottom: 8, top: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: const Color.fromRGBO(255, 122, 0, 1),
                  ),
                  child: Text(
                    "All",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 22, right: 22, bottom: 8, top: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    // color: const Color.fromRGBO(255, 122, 0, 1),
                  ),
                  child: Text(
                    "Men",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(13, 13, 14, 1)),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 22, right: 22, bottom: 8, top: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    // color: const Color.fromRGBO(255, 122, 0, 1),
                  ),
                  child: Text(
                    "Women",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(13, 13, 14, 1)),
                  ),
                ),
              const  SizedBox(
                  width: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 22, right: 22, bottom: 8, top: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    // color: const Color.fromRGBO(255, 122, 0, 1),
                  ),
                  child: Text(
                    "Kids",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(13, 13, 14, 1)),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 22, right: 22, bottom: 8, top: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    // color: const Color.fromRGBO(255, 122, 0, 1),
                  ),
                  child: Text(
                    "Other",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(13, 13, 14, 1)),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 25),
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const DetailScreen()),
                      ),
                    );
                  },
                  child: Container(
                    // height: 700,
                    // padding: const EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            // image: const DecorationImage(
                            //     image: AssetImage("assets/homeimage/home1.png"),
                            //     fit: BoxFit.fill),
                          ),
                          child: const Image(
                              image: AssetImage("assets/homeimage/home1.png"),
                              fit: BoxFit.fill),
                        ),
                        Text(
                          "\$240.32",
                          style: GoogleFonts.imprima(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: const Color.fromRGBO(13, 13, 14, 1)),
                        ),
                        Text(
                          "Tagerine Shirt",
                          style: GoogleFonts.imprima(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color.fromRGBO(121, 119, 128, 1)),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
