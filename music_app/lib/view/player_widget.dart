import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class PlayerWidget extends StatefulWidget {
  final AudioPlayer player;
  final List musclist;
  final int index;
  final ValueChanged<int> onSongChanged;

  const PlayerWidget({
    required this.player,
    super.key,
    required this.musclist,
    required this.index,
    required this.onSongChanged,
  });

  @override
  State<StatefulWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  late AudioPlayer player;
  late int currentIndex;
  bool isPlaying = false;
  late AssetSource path;
  Duration duration = const Duration();
  Duration position = const Duration();

  @override
  void initState() {
    super.initState();
    player = widget.player;
    currentIndex = widget.index;
    initplayer();
  }

  Future<void> initplayer() async {
    final currentsong = widget.musclist[currentIndex];
    path = AssetSource(currentsong.songUrl);
    player.onDurationChanged.listen((Duration d) {
      setState(() {
        duration = d;
      });
    });

    player.onPositionChanged.listen((Duration p) {
      setState(() {
        position = p;
      });
    });

    player.onPlayerComplete.listen((_) {
      playNextSong();
    });

    await player.setSource(path);
    playPause();
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }

  void playPause() async {
    if (isPlaying) {
      await player.pause();
      isPlaying = false;
    } else {
      await player.play(path);
      isPlaying = true;
    }
    setState(() {});
  }

  void playNextSong() async {
    currentIndex = (currentIndex + 1) % widget.musclist.length;
    await player.stop();
    widget.onSongChanged(currentIndex);
    await initplayer();
    await player.play(path);
    isPlaying = true;
  }

  void playPreviousSong() async {
    currentIndex =
        (currentIndex - 1 + widget.musclist.length) % widget.musclist.length;
    await player.stop();
    widget.onSongChanged(currentIndex);
    await initplayer();
    await player.play(path);
    isPlaying = true;
  }

  void _seek(Duration value) {
    player.seek(value);
  }

  Widget progressBar() {
    return ProgressBar(
      progress: position,
      total: duration,
      timeLabelLocation: TimeLabelLocation.none,
      progressBarColor: const Color.fromRGBO(230, 154, 21, 1),
      baseBarColor: const Color.fromRGBO(217, 217, 217, 0.19),
      thumbRadius: 0,
      thumbColor: Colors.amber,
      buffered: const Duration(milliseconds: 10000),
      onSeek: _seek,
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
                "${position.inMinutes}:${(position.inSeconds % 60).toString().padLeft(2, '0')}",
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
          child: progressBar(),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.repeat_one_rounded,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 30,
              ),
              IconButton(
                icon: const Icon(
                  Icons.skip_previous_rounded,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 30,
                ),
                onPressed: () {
                  playPreviousSong();
                },
              ),
              IconButton(
                icon: isPlaying
                    ? const Icon(
                        Icons.pause_circle_filled,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        size: 60,
                      )
                    : const Icon(
                        Icons.play_circle_fill,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        size: 60,
                      ),
                onPressed: () {
                  playPause();
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.skip_next_rounded,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 30,
                ),
                onPressed: () {
                  playNextSong();
                },
              ),
              const Icon(
                Icons.volume_up_rounded,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 30,
              ),
            ],
          ),
        )
      ],
    );
  }
}
