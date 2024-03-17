import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/main.dart';
import 'database.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State createState() => _HistoryState();
}

class _HistoryState extends State {
  Scaffold history() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/profileimg3.png",
                      height: 40,
                      width: 40,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      // child: Text("${namelist[index].name}"),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text(
                                      "${paymentdatastore[index].locationName}")),
                              const Spacer(),
                              Text("${paymentdatastore[index].totalAmount}"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(child: Text("name")),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text("${paymentdatastore[index].cardnumber}"),
                                  Spacer(),
                                  Text("${paymentdatastore[index].date}")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return history();
  }
}
