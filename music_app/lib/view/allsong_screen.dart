import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/player_scren.dart';

class SeeAllSongScreen extends StatefulWidget {
  final String name;
  final List songs;
  const SeeAllSongScreen({super.key, required this.name, required this.songs});

  @override
  State<SeeAllSongScreen> createState() => _DiscographyScreenState();
}

class _DiscographyScreenState extends State<SeeAllSongScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final musiclist = widget.songs;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      // bottomNavigationBar: const BottomNavi(),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.name,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: const Color.fromRGBO(255, 46, 0, 1),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: musiclist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return PlayerScreen(
                                musiclist: musiclist, index: index);
                          },
                        ));
                      },
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: screenHeight * 0.25,
                              // width: 119,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image:
                                      AssetImage("${musiclist[index].songImg}"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "${musiclist[index].songName}",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                            Text(
                              "${musiclist[index].year}",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
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
