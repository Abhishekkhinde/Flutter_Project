import 'package:brand_store_app/view/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State createState() => _CartScreenState();
}

class _CartScreenState extends State {
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
            "My Orders",
            style: GoogleFonts.imprima(
              fontWeight: FontWeight.w500,
              fontSize: 40,
              color: const Color.fromRGBO(13, 13, 14, 1),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 34),
                child: Slidable(
                  closeOnScroll: true,
                  endActionPane: ActionPane(
                    motion: const DrawerMotion(),
                    extentRatio: 0.2,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              height: 55,
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 122, 0, 1),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    child: Image.asset(
                                      "assets/icon/heart.png",
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      height: 17,
                                      width: 17,
                                    ),
                                    onTap: () {},
                                  ),
                                  GestureDetector(
                                    child: Image.asset(
                                      "assets/icon/trash.png",
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      height: 17,
                                      width: 17,
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 22),
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
                              const SizedBox(
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
                              const SizedBox(
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
                        const SizedBox(
                          width: 22,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 115,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                  ),
                ),
              );
            },
          ),
        ),

        // const Spacer(),
        const Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Divider(),
        ),
        const SizedBox(
          height: 20,
        ),
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
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 122, 0, 1),
                    fixedSize: const Size(190, 62)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CheckOutScreen();
                  }));
                },
                child: Text(
                  "Checkout Now",
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
    );
  }
}
