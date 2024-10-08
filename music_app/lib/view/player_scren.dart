import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/player_widget.dart';

class PlayerScreen extends StatefulWidget {
  final List musiclist;
  final int index;
  const PlayerScreen({super.key, required this.musiclist, required this.index});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  late AudioPlayer player;
  bool isFavourite = false;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.index;
    player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.stop);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (currentIndex < widget.musiclist.length) {
        final songUrl = widget.musiclist[currentIndex].songUrl;
        await player.setSource(AssetSource(songUrl));
        await player.resume();
      }
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void updateSong(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenwidth = MediaQuery.of(context).size.width;
    final song = widget.musiclist[currentIndex];
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 0.6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 5, right: 7, bottom: 5),
            height: screenHeight * 0.65,
            width: screenwidth * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(song.songImg), fit: BoxFit.fill),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
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
                      onPressed: () {
                        setState(() {
                          song.isFavorite = !song.isFavorite;
                        });
                      },
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.logout,
                        size: 25,
                        color: Color.fromRGBO(230, 154, 21, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            song.description,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 23,
              color: const Color.fromRGBO(230, 154, 21, 1),
            ),
          ),
          Text(
            song.singer,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          PlayerWidget(
            player: player,
            musclist: widget.musiclist,
            index: currentIndex,
            onSongChanged: updateSong,
          ),
        ],
      ),
    );
  }
}
