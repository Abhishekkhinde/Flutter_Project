import 'package:brand_store_app/view/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State createState() => DetailScreenState();
}

class DetailScreenState extends State {
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
          "Details",
          style: GoogleFonts.imprima(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: const Color.fromRGBO(13, 13, 14, 1)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage("assets/icon/save.png"),
              color: Color.fromRGBO(13, 13, 14, 1),
              fit: BoxFit.fill,
              height: 22,
              width: 20,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/detailimage/detail1.png",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Premium Tagerine Shirt",
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: const Color.fromRGBO(13, 13, 14, 1)),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                GestureDetector(
                  child: const Image(
                    image: AssetImage("assets/icon/design1.png"),
                    height: 24,
                    width: 24,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  child: const Image(
                    image: AssetImage("assets/icon/design2.png"),
                    height: 24,
                    width: 24,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  child: const Image(
                    image: AssetImage("assets/icon/design3.png"),
                    height: 24,
                    width: 24,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Size",
              style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: const Color.fromRGBO(13, 13, 14, 1)),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "S",
                    style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: const Color.fromRGBO(121, 119, 128, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 17,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "M",
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: const Color.fromRGBO(121, 119, 128, 1)),
                  ),
                ),
                const SizedBox(
                  width: 17,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                  child: Text(
                    "L",
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: const Color.fromRGBO(121, 119, 128, 1)),
                  ),
                ),
                const SizedBox(
                  width: 17,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "XL",
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: const Color.fromRGBO(121, 119, 128, 1)),
                  ),
                ),
                const SizedBox(
                  width: 17,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "XXL",
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: const Color.fromRGBO(121, 119, 128, 1)),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$257.85",
                  style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(255, 122, 0, 1),
                        fixedSize: const Size(162, 62)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CartScreen();
                      }));
                    },
                    child: Text(
                      "Add To Cart",
                      style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
