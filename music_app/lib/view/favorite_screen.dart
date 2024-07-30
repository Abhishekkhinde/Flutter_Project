// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/discography_model.dart';
import 'package:music_app/view/player_scren.dart';

class FavoriteScreen extends StatefulWidget {
  final List<SongModel> favoriteSong;
  const FavoriteScreen({super.key, required this.favoriteSong});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late List<SongModel> _favoritesongs;

  @override
  void initState() {
    super.initState();
    setState(() {
      _favoritesongs = widget.favoriteSong;
    });
  }

  void _toggleFavorite(SongModel song) {
    setState(() {
      song.isFavorite = !song.isFavorite;
      _favoritesongs = getFavoriteSong();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Favourite",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: const Color.fromRGBO(255, 46, 0, 1),
                ),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
            itemCount: widget.favoriteSong.length,
            itemBuilder: (context, index) {
              final song = widget.favoriteSong[index];
              return Padding(
                padding: const EdgeInsets.only(
                    left: 17, right: 25, top: 7, bottom: 7),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return PlayerScreen(
                            musiclist: widget.favoriteSong, index: index);
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
                              image: AssetImage("${song.songImg}"),
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
                            "${song.songName}",
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
                                "${song.year}",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: const Color.fromRGBO(132, 125, 125, 1),
                                ),
                              ),
                              Text(
                                " * ",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(132, 125, 125, 1),
                                ),
                              ),
                              Text(
                                "${song.singer}",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: const Color.fromRGBO(132, 125, 125, 1),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _toggleFavorite(song);
                          });
                        },
                        icon: song.isFavorite == true
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              )
                            : const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                                size: 30,
                              ),
                      )
                    ],
                  ),
                ),
              );

              //  Padding(
              //   padding: const EdgeInsets.only(left: 10, right: 10),
              //   child: GestureDetector(
              //     onTap: () {},
              //     child: Row(
              //       children: [
              //         Container(
              //           height: 100,
              //           width: 100,
              //           decoration: BoxDecoration(
              //             image: DecorationImage(
              //                 image: AssetImage("${song.songImg}"),
              //                 fit: BoxFit.fill),
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // );
            },
          ))
        ]),
      ),
    );
  }
}
