import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/landing_page.dart';
import 'package:music_app/view/player_widget.dart';

class PlayerScreen extends StatefulWidget {
  final List musiclist;
  final int index;
  const PlayerScreen({super.key, required this.musiclist, required this.index});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  AudioPlayer player = AudioPlayer();
  bool isFavourite = false;

  @override
  void initState() {
    super.initState();

    // Create the audio player.
    player = AudioPlayer();

    //set release mode to keep the source after playback has completed
    player.setReleaseMode(ReleaseMode.stop);

    // start the player as soon as the app is displayed
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // await player.setSource(AssetSource('ma.mp3'));
      await player.resume();
    });
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final song = widget.musiclist[widget.index];
    return Scaffold(
      bottomNavigationBar: const BottomNavi(),
      backgroundColor: const Color.fromRGBO(24, 24, 24, 0.6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 44, right: 7, bottom: 5),
            // height: 551,
            height: screenHeight * 0.65,
            width: 390,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(song.songImg), fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  song.description,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: const Color.fromRGBO(230, 154, 21, 1),
                  ),
                ),
                Text(
                  song.singer,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: isFavourite
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
                        if (isFavourite == false) {
                          isFavourite = true;
                        } else {
                          isFavourite = false;
                        }
                        setState(() {});
                      },
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.ios_share,
                        size: 25,
                        color: Color.fromRGBO(230, 154, 21, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          PlayerWidget(
              player: player, musclist: widget.musiclist, index: widget.index)
        ],
      ),
    );
  }
}
