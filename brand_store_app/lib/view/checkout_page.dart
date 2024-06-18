import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
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
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Delivery Address",
            style: GoogleFonts.imprima(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: const Color.fromRGBO(121, 119, 128, 1),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            // margin: const EdgeInsets.only(top: 15, bottom: 15),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 46,
                  width: 46,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/icon/map.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "25/3 Housing Estate, Sylhet",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 44),
                GestureDetector(
                  child: Text(
                    "Change",
                    style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromRGBO(121, 119, 128, 1),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset(
                "assets/icon/time.png",
                height: 18,
                width: 18,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                "Delivered in next 7 days",
                style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color.fromRGBO(13, 13, 14, 1),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 44,
          ),
          Text(
            "Payment Method",
            style: GoogleFonts.imprima(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: const Color.fromRGBO(121, 119, 128, 1),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icon/visa.png",
                height: 14,
                width: 45,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/icon/ameriacanexpres.png",
                height: 18,
                width: 44,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/icon/mastercard.png",
                height: 16,
                width: 34,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/icon/paypal.png",
                height: 14,
                width: 54,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/icon/applepay.png",
                height: 16,
                width: 38,
                fit: BoxFit.fill,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add Voucher",
                style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(121, 119, 128, 1),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Note : ",
                style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color.fromRGBO(255, 0, 0, 1),
                ),
              ),
              Expanded(
                child: Text(
                  "Use your order id at the payment. Your Id #154619 if you forget to put your order id we can’t confirm the payment.",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Total Items (3)",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$116.00",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(13, 13, 14, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Standard Delivery",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$12.00",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(13, 13, 14, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Total Payment",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$126.00",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(13, 13, 14, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 71),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(255, 122, 0, 1),
                      fixedSize: const Size(190, 62)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const CheckOutScreen();
                    }));
                  },
                  child: Text(
                    "Pay Now",
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          )
        ]),
      ),
    );
  }
}
