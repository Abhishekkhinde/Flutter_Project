import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'database.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State createState() => _HistoryState();
}

class _HistoryState extends State {
  Scaffold history() {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(225, 246, 254, 1),
      appBar: AppBar(
        title: const Text("History"),
      ),
      body: ListView.builder(
        itemCount: paymentdatastore.length,
        itemBuilder: (context, index) {
          return Slidable(
            closeOnScroll: true,
            endActionPane: const ActionPane(
              extentRatio: 0.2,
              motion: DrawerMotion(),
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    // child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     GestureDetector(
                    //       child: Container(
                    //         //  padding: const EdgeInsets.all(10),
                    //         height: 25,
                    //         width: 25,
                    //         decoration: const BoxDecoration(
                    //             color: Color.fromRGBO(89, 57, 241, 1),
                    //             shape: BoxShape.circle),
                    //         child: const Icon(
                    //           Icons.edit,
                    //           color: Colors.white,
                    //           size: 20,
                    //         ),
                    //       ),
                    //       onTap: () {
                    //         //   editTask(todolist[index]);
                    //       },
                    //     ),
                    //     GestureDetector(
                    //       child: Container(
                    //         //   padding: const EdgeInsets.all(10),
                    //         height: 25,
                    //         width: 25,
                    //         decoration: const BoxDecoration(
                    //             color: Color.fromRGBO(89, 57, 241, 1),
                    //             shape: BoxShape.circle),
                    //         child: const Icon(
                    //           Icons.delete,
                    //           color: Colors.white,
                    //           size: 20,
                    //         ),
                    //       ),
                    //       onTap: () {
                    //         //   removeTask(todolist[index]);
                    //       },
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [BoxShadow()]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        // color: Colors.red,
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
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 5),
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
                                Container(
                                    child: Text(
                                        "${paymentdatastore[index].name}")),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                        "${paymentdatastore[index].cardnumber}"),
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
