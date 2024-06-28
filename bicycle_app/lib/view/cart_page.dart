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
          color: Color.fromRGBO(34, 40, 52, 0.6),
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
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
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
                      color: const Color.fromRGBO(255, 255, 255, 0.1),
                    ),
                  ),
                  child: Image.asset(
                    "assets/bicycle/3.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          )
        ])
      ]),
    );
  }
}
