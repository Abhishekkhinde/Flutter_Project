import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioFile extends StatefulWidget {
  final AudioPlayer advancedplayer;
  const AudioFile({super.key, required this.advancedplayer});

  @override
  State<AudioFile> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioFile> {
  Duration _duration = new Duration();
  Duration _possition = new Duration();

  final String path =
      "https://audio.com/alfred-grupstra/audio/zombies-on-their-way";

  bool isPlying = false;
  bool isPaused = false;
  bool isLoop = false;

  @override
  void initState() {
    super.initState();

    this.widget.advancedplayer.onDurationChanged.listen((d) {
      setState(() {
        _duration = d;
      });
    });

    this.widget.advancedplayer.onPositionChanged.listen((p) {
      setState(() {
        _possition = p;
      });
    });

    this.widget.advancedplayer.setSourceUrl(path);
  }

  Widget btnStart() {
    return IconButton(
      icon: isPlying == false
          ? const Icon(
              Icons.play_circle_fill,
              color: Color.fromRGBO(255, 255, 255, 1),
              size: 50,
            )
          : const Icon(
              Icons.pause_circle_filled,
              color: Color.fromRGBO(255, 255, 255, 1),
              size: 50,
            ),
      onPressed: () {
        if (isPlying == false) {
          this.widget.advancedplayer.play(path as Source);
          setState(() {
            isPlying == true;
          });
        } else if (isPlying == true) {
          this.widget.advancedplayer.pause();
          setState(() {
            isPlying == false;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                _duration.toString().split(".") as String,
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
    );
  }
}
