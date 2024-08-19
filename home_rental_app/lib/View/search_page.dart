import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/Model/home_data_model.dart';
import 'package:home_rental_app/View/detail_page.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<HomeModelClass> _foundUser = [];
  List<HomeModelClass> _combineData = [];

  @override
  void initState() {
    super.initState();
    _combineData = [...popularHome, ...nearByHome];
    // _foundUser = _combineData;
  }

  void _searchData(String enteredKeyword) {
    setState(() {
      if (enteredKeyword.isEmpty) {
      } else {
        _foundUser = _combineData.where((data) {
          return (data.villaName!
                  .toLowerCase()
                  .contains(enteredKeyword.toLowerCase())) ||
              (data.location!
                  .toLowerCase()
                  .contains(enteredKeyword.toLowerCase()));
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
        title: Container(
          height: 46,
          // width: widths * 0.9,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 16, right: 16),
          // margin:
          //     const EdgeInsets.only(left: 22, right: 22, top: 22, bottom: 22),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: TextField(
            keyboardType: TextInputType.none,
            textAlign: TextAlign.left,
            enabled: true,
            onChanged: (value) {
              _searchData(value);
            },
            decoration: InputDecoration(
                hintText: "Search your favourite paradise",
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
                icon: const Icon(
                  Icons.search,
                  size: 24,
                ),
                border: InputBorder.none),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: widths * 0.02, right: widths * 0.02, bottom: heights * 0.02),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: _foundUser.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPage(homeData: _foundUser, index: index);
                    }));
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
                                    image: AssetImage(
                                        "${_combineData[index].image}"),
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
                                    "${_foundUser[index].villaName}",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 1)),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "${_foundUser[index].location}",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color.fromRGBO(
                                            72, 72, 72, 1)),
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  "\$${_foundUser[index].ammout}",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: const Color.fromRGBO(
                                          32, 169, 247, 1)),
                                ),
                                Text(
                                  '/Month',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color:
                                          const Color.fromRGBO(72, 72, 72, 1)),
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
            ))
          ],
        ),
      ),
    );
  }
}
