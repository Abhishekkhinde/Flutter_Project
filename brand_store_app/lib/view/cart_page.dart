import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State createState() => _CartScreenState();
}

class _CartScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Image(
            image: AssetImage("assets/icon/back.png"),
            color: Color.fromRGBO(13, 13, 14, 1),
            fit: BoxFit.fill,
            height: 20,
            width: 11,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Checkout",
          style: GoogleFonts.imprima(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: const Color.fromRGBO(13, 13, 14, 1)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "My Orders",
            style: GoogleFonts.imprima(
              fontWeight: FontWeight.w500,
              fontSize: 40,
              color: const Color.fromRGBO(13, 13, 14, 1),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 22),
                  height: 150,
                  width: 108,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/homeimage/home1.png"),
                        fit: BoxFit.fill),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Premium Tagerine Shirt",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Yellow",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(121, 119, 128, 1),
                        ),
                      ),
                      Text(
                        "Size 8",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(121, 119, 128, 1),
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "\$257.85",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 26,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 22,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 125,
                    ),
                    Row(
                      children: [
                        Text(
                          "1",
                          style: GoogleFonts.imprima(
                            fontWeight: FontWeight.w400,
                            fontSize: 32,
                            color: const Color.fromRGBO(13, 13, 14, 1),
                          ),
                        ),
                        Text(
                          "x",
                          style: GoogleFonts.imprima(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: const Color.fromRGBO(13, 13, 14, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
