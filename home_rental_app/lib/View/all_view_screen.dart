import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/Model/home_data_model.dart';
import 'package:home_rental_app/View/detail_page.dart';

class AllViewScreen extends StatefulWidget {
  final String pagename;
  final List<HomeModelClass> homeData;
  const AllViewScreen(
      {super.key, required this.homeData, required this.pagename});
  @override
  State<AllViewScreen> createState() => _AllViewScreenState();
}

class _AllViewScreenState extends State<AllViewScreen> {
  @override
  Widget build(BuildContext context) {
    final data = widget.homeData;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(
          size: 30,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: const Icon(Icons.arrow_back),
        //   iconSize: 30,
        // ),
        title: Text(
          widget.pagename,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: const Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(left: 10, right: 10),
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 5 / 8),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(homeData: data ,index:index),
                      ),
                    );
                  },
                  child: Container(
                    // margin: const EdgeInsets.only(left: 22, top: 14, right: 22),
                    height: 306,
                    width: 211,
                    padding:
                        const EdgeInsets.only(top: 11, left: 11, right: 11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 196,
                          width: 189,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("${data[index].image}"),
                                fit: BoxFit.fill),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 27,
                                width: 55,
                                padding: const EdgeInsets.only(
                                    left: 8.5, top: 3.5, bottom: 3.5),
                                margin: const EdgeInsets.only(right: 9, top: 9),
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
                                      "${popularHome[index].rating}",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "${data[index].villaName}",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "${data[index].location}",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color.fromRGBO(72, 72, 72, 1)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$${popularHome[index].ammout}",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: const Color.fromRGBO(32, 169, 247, 1)),
                            ),
                            Text(
                              '/Month',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(72, 72, 72, 1)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
