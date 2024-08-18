import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/Model/home_data_model.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DetailPage extends StatefulWidget {
  final List<HomeModelClass> homeData;
  final int index;
  const DetailPage({super.key, required this.homeData, required this.index});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late Razorpay _razorpay;

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "Payment Succesful${response.paymentId!}",
        toastLength: Toast.LENGTH_SHORT);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "Payment Fail${response.message!}",
        toastLength: Toast.LENGTH_SHORT);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "External${response.walletName!}",
        toastLength: Toast.LENGTH_SHORT);
  }

  void openCheckout(amount) {
    amount = amount * 100;
    var options = {
      'key': 'rzp_test_SZCJlxQmd4mfim',
      'amount': amount, //in paise.
      'name': 'Abhishek Khinde',
      // 'order_id':
      //     'YDLWRDoMOAtVu0kBqgbSuZBO', // Generate order_id using Orders API
      'timeout': 160, // in seconds
      'prefill': {
        'contact': '8806623075',
        'email': 'abhisheknkhinde11@gmail.com'
      }
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e');
      Fluttertoast.showToast(msg: "Error: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.homeData[widget.index];
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Details",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: const Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(22),
            width: double.infinity,
            height: 244,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("${data.image}"),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 27,
                  width: 55,
                  padding:
                      const EdgeInsets.only(left: 8.5, top: 3.5, bottom: 3.5),
                  margin: const EdgeInsets.only(left: 14, top: 14),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(112, 200, 250, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.star,
                        size: 17,
                        color: Color.fromRGBO(251, 227, 12, 1),
                      ),
                      Text(
                        "${data.rating}",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 22),
            child: Text(
              "${data.villaName}",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(left: 22, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "\$${data.ammout}",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(32, 169, 247, 1)),
                ),
                Text(
                  "/Month",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(72, 72, 72, 1)),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 22),
            child: Text(
              "${data.location}",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: const Color.fromRGBO(72, 72, 72, 1)),
            ),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 141,
                width: 117,
                padding: const EdgeInsets.all(14),
                margin: const EdgeInsets.only(left: 13, top: 13, bottom: 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(255, 255, 255, 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.chair,
                      size: 25,
                      color: Color.fromRGBO(90, 90, 90, 1),
                    ),
                    Text(
                      "Bedrooms",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(90, 90, 90, 1)),
                    ),
                    Text(
                      "${data.bedrooms}",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 141,
                width: 117,
                padding: const EdgeInsets.all(14),
                margin: const EdgeInsets.only(left: 13, top: 13, bottom: 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(255, 255, 255, 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.bathtub_rounded,
                      size: 25,
                      color: Color.fromRGBO(90, 90, 90, 1),
                    ),
                    Text(
                      "Bathrooms",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(90, 90, 90, 1)),
                    ),
                    Text(
                      "${data.bathrooms}",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 141,
                width: 117,
                padding: const EdgeInsets.all(13),
                margin: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(255, 255, 255, 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.aspect_ratio_rounded,
                      size: 25,
                      color: Color.fromRGBO(90, 90, 90, 1),
                    ),
                    Text(
                      "Square ft",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(90, 90, 90, 1)),
                    ),
                    Text(
                      "${data.size}",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 22, right: 22, top: 8),
            height: 125,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "${data.about}",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: heights * 0.1,
            width: double.infinity,
            padding: EdgeInsets.only(
                left: widths * 0.2, right: widths * 0.2, top: 10, bottom: 15),
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    blurRadius: 13, spreadRadius: 6,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    // offset: Offset(80, 0)
                  )
                ]),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // fixedSize: const Size(220, 55),
                  backgroundColor: const Color.fromRGBO(32, 169, 247, 1),
                ),
                onPressed: () {
                  setState(() {
                    int amount =
                        int.parse("${widget.homeData[widget.index].ammout}");
                    openCheckout(amount);
                  });
                },
                child: Text(
                  "Rent Now",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
