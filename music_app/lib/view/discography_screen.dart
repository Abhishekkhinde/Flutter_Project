import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/discography_model.dart';
import 'package:music_app/view/landing_page.dart';
import 'package:music_app/view/player_scren.dart';

class DiscographyScreen extends StatefulWidget {
  const DiscographyScreen({super.key});

  @override
  State<DiscographyScreen> createState() => _DiscographyScreenState();
}

class _DiscographyScreenState extends State<DiscographyScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      // bottomNavigationBar: const BottomNavi(),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Discography",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: const Color.fromRGBO(255, 46, 0, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: dicographySong.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 8 / 9,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return PlayerScreen(
                                musiclist: dicographySong, index: index);
                          },
                        ));
                      },
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: screenHeight * 0.20,
                              // width: 119,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "${dicographySong[index].songImg}"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "${dicographySong[index].songName}",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                            Text(
                              "${dicographySong[index].year}",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                          ]),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
