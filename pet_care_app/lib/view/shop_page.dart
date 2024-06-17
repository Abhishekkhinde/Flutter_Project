import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/boillerplate.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State createState() => _ShopScreenState();
}

class _ShopScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingButton(),
      bottomNavigationBar: const BottomNavi(),
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 3, left: 32, right: 32),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello Sarah",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          Text(
                            "Find your lovable Pets",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 22,
                      weight: 2,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 45, right: 45),
                height: 40,
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 5),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(194, 195, 204, 1)),
                    hintText: 'search',
                    border: InputBorder.none,
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 22,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.only(left: 25, right: 25),
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(245, 146, 69, 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/shopimage/shop1.png"),
                                fit: BoxFit.fill),
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 110,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 25),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(245, 245, 247, 1),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                        ),
                        child: Text(
                          "Pets",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color.fromRGBO(245, 146, 69, 1)),
                        ),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
