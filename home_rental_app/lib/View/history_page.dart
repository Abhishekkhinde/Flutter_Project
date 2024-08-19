import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/Model/historymodel.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
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
          "History",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: const Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(left: 10, right: 10),
        itemCount: historyData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return DetailPage(homeData: _foundUser, index: index);
              // }));
            },
            child: Column(
              children: [
                Container(
                  // height: heights * 0.1,
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("${historyData[index].image}"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${historyData[index].name}",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "${historyData[index].location}",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(72, 72, 72, 1)),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          
                          Container(
                            child: historyData[index].status == true
                                ? Text(
                                    "Succesful",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.green),
                                  )
                                : Text(
                                    "Failed",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.red),
                                  ),
                          ),
                          Container(
                            child: historyData[index].status == true
                                ? Text(
                                    "\$${historyData[index].ammount}",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.green),
                                  )
                                : Text(
                                    "\$${historyData[index].ammount}",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.red),
                                  ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Divider(),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
