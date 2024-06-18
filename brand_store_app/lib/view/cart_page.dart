import 'package:flutter/material.dart';
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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: [])));
  }
}
