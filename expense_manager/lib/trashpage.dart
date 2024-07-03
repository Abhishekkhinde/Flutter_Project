import 'package:expense_manager/boilerplate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  @override
  State createState() => _TrashScreenState();
}

class _TrashScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Mydawer(),
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 12, right: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.remove_circle,
                        size: 24,
                        color: Color.fromRGBO(204, 210, 227, 1),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Medicine",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the ",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "500",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "3 june | 11:50Am",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    )
                  ],
                ),
                const Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}
