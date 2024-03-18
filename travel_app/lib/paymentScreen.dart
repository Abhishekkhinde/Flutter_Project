import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/database.dart';
import 'package:travel_app/main.dart';
import 'package:travel_app/paysaccesful.dart';
import 'package:google_fonts/google_fonts.dart';
import 'destinationDetail.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});
  @override
  State createState() => _Paymentstate();
}

class _Paymentstate extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cardNoController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  void submit(bool doedit, [PaymentData? paymetnobj]) async {
    if (nameController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty &&
        cardNoController.text.trim().isNotEmpty &&
        expiryController.text.trim().isNotEmpty &&
        cvvController.text.trim().isNotEmpty) {
      if (!doedit) {
        await insertPyamentData(
          PaymentData(
              name: nameController.text.trim(),
              date: dateController.text.trim(),
              cardnumber: int.parse(cardNoController.text.trim()),
              cardexpirydate: expiryController.text.trim(),
              cardCvv: int.parse(cvvController.text.trim()),
              totalAmount: popularDestination[inde].ticketAmmount * totalseat,
              locationName: popularDestination[inde].locationName),
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DonePay()),
        );

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("payment succesful "),
          ),
        );
        setState(() {});
      } else {
        paymetnobj!.name = nameController.text.trim();
        paymetnobj.date = nameController.text.trim();
        paymetnobj.cardnumber = int.parse(cardNoController.text.trim());
        paymetnobj.cardexpirydate = expiryController.text.trim();
        paymetnobj.cardCvv = int.parse(cvvController.text.trim());
        paymetnobj.totalAmount =
            popularDestination[inde].ticketAmmount * totalseat;
        paymetnobj.locationName = popularDestination[inde].locationName;
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Enter data"),
        ),
      );
    }
  }

  Scaffold isPaymentScreen(bool doedit, [PaymentData? paymentobj]) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pay1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            margin:
                const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 70),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.black, width: 2),
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/profileimg3.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 400,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      hintStyle:
                          const TextStyle(color: Colors.black, fontSize: 15),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 2),
                      ),
                    ),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 400,
                  child: TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      hintText: "booking Date",
                      hintStyle:
                          const TextStyle(color: Colors.black, fontSize: 15),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(width: 2),
                      ),
                      suffix: const Icon(Icons.date_range_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 2),
                      ),
                    ),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2015),
                        lastDate: DateTime(2045),
                        initialDate: DateTime.now(),
                      );

                      String formatedDate =
                          DateFormat.yMMMd().format(pickedDate!);
                      setState(() {
                        dateController.text = formatedDate;
                      });
                    },
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Text(
                        "Card Detail",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 400,
                        child: TextField(
                          controller: cardNoController,
                          decoration: InputDecoration(
                            hintText: "card number",
                            hintStyle: const TextStyle(
                                color: Colors.black, fontSize: 15),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              borderSide: BorderSide(width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.orange, width: 2),
                            ),
                          ),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 145,
                            child: TextField(
                              controller: expiryController,
                              decoration: InputDecoration(
                                hintText: "Expiry",
                                hintStyle: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                      color: Colors.orange, width: 2),
                                ),
                              ),
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  firstDate: DateTime(2015),
                                  lastDate: DateTime(2045),
                                  initialDate: DateTime.now(),
                                );

                                String formatedDatee =
                                    DateFormat.yMMMd().format(pickedDate!);
                                setState(() {
                                  expiryController.text = formatedDatee;
                                });
                              },
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: TextField(
                              controller: cvvController,
                              decoration: InputDecoration(
                                hintText: "CVV",
                                hintStyle: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                      color: Colors.orange, width: 2),
                                ),
                              ),
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: 400,
                  child: Text(
                    "Total Amount : ${popularDestination[inde].ticketAmmount * totalseat}",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 81, 169, 246),
                    ),
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(350.0, 50.0),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    doedit ? submit(doedit, paymentobj) : submit(doedit);
                  },
                  child: const Text(
                    "Proceed",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 81, 169, 246),
                    ),
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(350.0, 50.0),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return isPaymentScreen(false);
  }
}
