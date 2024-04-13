import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State createState() => _GraphScreenState();
}

class _GraphScreenState extends State {
  Map<String, double> data = {
    "Food": 20,
    "Fuel": 30,
    "Medicine": 40,
    "Entertainment": 50,
    "Shopping": 60,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(
          "Graph",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 23, right: 23, top: 31, bottom: 60),
        child: Column(
          children: [
            PieChart(
              dataMap: data,
              animationDuration: const Duration(
                milliseconds: 2000,
              ),
              chartType: ChartType.ring,
              chartRadius: 175,
              ringStrokeWidth: 35,
              centerWidget: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Total"), Text("25000")],
              ),
              chartValuesOptions: const ChartValuesOptions(
                  showChartValuesInPercentage: true,
                  showChartValues: false,
                  chartValueBackgroundColor: Color.fromRGBO(255, 255, 255, 1)),
              colorList: const [
                Color.fromRGBO(214, 3, 3, 0.7),
                Color.fromRGBO(0, 148, 255, 0.7),
                Color.fromRGBO(0, 174, 91, 0.7),
                Color.fromRGBO(100, 62, 255, 0.7),
                Color.fromRGBO(241, 38, 197, 0.7),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            Container(
              height: 400,
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 30, bottom: 30),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(214, 3, 3, 0.7),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/medicine.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Food",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "& 650",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          size: 15,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            const Spacer(),
            SizedBox(
              height: 25,
              width: 230,
              child: Row(
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "& 2500",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
