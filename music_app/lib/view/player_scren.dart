// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/boiller_plate.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavi(),
      backgroundColor: const Color.fromRGBO(24, 24, 24, 0.6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 44, right: 7, bottom: 5),
            height: 551,
            width: 390,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/11.png",
                    ),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Alone in the Abyss",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: const Color.fromRGBO(230, 154, 21, 1),
                  ),
                ),
                Text(
                  "Youlakou",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.download,
                          size: 25,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 17, right: 17, bottom: 3),
            child: Row(
              children: [
                Text(
                  "Dynamic Warmup | ",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                const Spacer(),
                Text(
                  "4 min",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 370,
            height: 7,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(217, 217, 217, 0.19),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 22),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.repeat_one_rounded,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 20,
                ),
                Icon(
                  Icons.skip_next_rounded,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 25,
                ),
                Icon(
                  Icons.play_circle_fill,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 50,
                ),
                Icon(
                  Icons.skip_next_rounded,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 25,
                ),
                Icon(
                  Icons.volume_up_rounded,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
