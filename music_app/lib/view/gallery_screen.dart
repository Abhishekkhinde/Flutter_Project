import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/cursor_model.dart';
import 'package:music_app/model/discography_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:music_app/view/allsong_screen.dart';
import 'package:music_app/view/player_scren.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      // bottomNavigationBar: const BottomNavi(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: cursorList.length,
              itemBuilder: (context, index, realIndex) {
                final curseData = cursorList[index];

                return Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 22, bottom: 64),
                      alignment: Alignment.bottomLeft,
                      width: 459,
                      height: screenHeight * 3 / 4,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("${curseData.curseImage}"),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(20, 20),
                                blurRadius: 20,
                                spreadRadius: 19,
                                blurStyle: BlurStyle.inner,
                                color: Color.fromRGBO(24, 24, 24, 1))
                          ]),
                    ),
                    Positioned(
                      bottom: 120,
                      left: 20,
                      child: Text(
                        "${curseData.curseName}",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 65,
                      left: 20,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(132, 37),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19)),
                              backgroundColor:
                                  const Color.fromRGBO(255, 46, 0, 1)),
                          onPressed: () {},
                          child: Text(
                            "Subscribe",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          )),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                height: MediaQuery.of(context).size.height * 0.415,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < cursorList.length; i++)
                  currentIndex == i
                      ? Container(
                          margin: const EdgeInsets.all(2),
                          height: 7,
                          width: 21,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: const Color.fromRGBO(255, 61, 0, 1),
                          ),
                        )
                      : Container(
                          margin: const EdgeInsets.all(2),
                          height: 7,
                          width: 7,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        )
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Discography",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(255, 46, 0, 1),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(248, 162, 69, 1),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SeeAllSongScreen(
                                name: "Discography", songs: dicographySong);
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: screenHeight * 0.21,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
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
                              height: screenHeight * 0.15,
                              width: 119,
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
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Popular Song",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color.fromRGBO(203, 200, 200, 1),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(248, 162, 69, 1),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SeeAllSongScreen(
                              name: "Popular Song", songs: popularSong);
                        },
                      ));
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.3,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 17, right: 25, top: 7, bottom: 7),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return PlayerScreen(
                                musiclist: popularSong, index: index);
                          },
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 72,
                            width: 67,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "${popularSong[index].songImg}"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${popularSong[index].songName}",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${popularSong[index].year}",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: const Color.fromRGBO(
                                          132, 125, 125, 1),
                                    ),
                                  ),
                                  Text(
                                    " * ",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: const Color.fromRGBO(
                                          132, 125, 125, 1),
                                    ),
                                  ),
                                  Text(
                                    "${popularSong[index].singer}",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: const Color.fromRGBO(
                                          132, 125, 125, 1),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_vert,
                            size: 40,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          )
                        ],
                      ),
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
