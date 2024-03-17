import 'package:flutter/material.dart';
import 'home_page.dart';
import 'destinationDetail.dart';
import 'package:travel_app/main.dart';

class DonePay extends StatefulWidget {
  const DonePay({super.key});
  @override
  State createState() => _DonePayState();
}

class _DonePayState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 187, 223, 253)),
        child: Container(
          margin:
              const EdgeInsets.only(top: 150, left: 60, right: 60, bottom: 50),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                //margin: const EdgeInsets.all(120),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/donepay2.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Payment Successful!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const Text(
                "You have complete your payment",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                " Total Amount :${popularDestination[inde].ticketAmmount * totalseat}",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 200,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 82, 81, 81),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size(300.0, 40.0),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: const Text(
                  "Done",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
