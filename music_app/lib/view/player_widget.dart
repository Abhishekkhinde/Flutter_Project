import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class PlayerWidget extends StatefulWidget {
  final AudioPlayer player;
  

  const PlayerWidget({required this.player, super.key});

  @override
  State<StatefulWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  final player = AudioPlayer();
  bool isPlaying = true;
  late AssetSource path;
  Duration duration = const Duration();
  Duration position = const Duration();

  @override
  void initState() {
    super.initState();

    initplayer();
  }

  Future initplayer() async {
    const currentsong = 'ma.mp3';
    path = AssetSource(currentsong);
    // listen to audio duration
    player.onDurationChanged.listen((Duration d) {
      setState(() {
        duration = d;
      });
    });

    // Listen to audiopostion
    player.onPositionChanged.listen((Duration p) {
      setState(() {
        position = p;
      });
    });

    player.onPlayerComplete.listen((_) {
      setState(() {
        duration = position;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }

  void playPause() async {
    if (isPlaying == false) {
      await player.pause();
      isPlaying = true;
    } else {
      player.play(path);
      isPlaying = false;
    }
    setState(() {});
  }

  void _seek(Duration value) {
    final position = value;
    player.seek(position);
  }

  Widget progresBar() {
    return ProgressBar(
      progress: position,
      total: duration,
      // timeLabelTextStyle: const TextStyle(color: Colors.white),
      timeLabelLocation: TimeLabelLocation.none,
      bufferedBarColor: null,
      progressBarColor: const Color.fromRGBO(230, 154, 21, 1),
      baseBarColor: const Color.fromRGBO(217, 217, 217, 0.19),
      thumbRadius: 0,
      thumbColor: Colors.amber,
      buffered: const Duration(milliseconds: 10000),
      onDragUpdate: (duration) {},
      onSeek: (duration) {
        _seek(duration);
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
                "${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}",
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
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: progresBar(),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.repeat_one_rounded,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 20,
              ),
              const Icon(
                Icons.skip_previous_rounded,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 25,
              ),
              IconButton(
                  icon: isPlaying
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
                    playPause();
                  }),
              const Icon(
                Icons.skip_next_rounded,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 25,
              ),
              const Icon(
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
