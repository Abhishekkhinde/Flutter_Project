import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/discography_model.dart';
import 'package:music_app/view/player_scren.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<SongModel> _foundUser = [];

  List<SongModel> _combineSong = [];
  List<Map<String, dynamic>> result = [];

  @override
  void initState() {
    super.initState();
    _combineSong = [...dicographySong, ...popularSong];

    _foundUser = _combineSong;
  }

  void _searchSong(String enteredKeyWord) {
    setState(() {
      if (enteredKeyWord.isEmpty) {
        _foundUser = _combineSong;
      } else {
        _foundUser = _combineSong.where((song) {
          return song.songName!
              .toLowerCase()
              .contains(enteredKeyWord.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            TextField(
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: const Color.fromRGBO(203, 200, 200, 1),
              ),
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.search,
                  weight: 1,
                  size: 30,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                hintText: "Search Songs",
                hintStyle: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: const Color.fromRGBO(203, 200, 200, 1),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      width: 1,
                      strokeAlign: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      width: 1,
                      strokeAlign: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                return _searchSong(value);
              },
            ),
            Expanded(
                child: ListView.builder(
              itemCount: _foundUser.length,
              itemBuilder: (context, index) {
                final song = _foundUser[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PlayerScreen(musiclist: _foundUser, index: index);
                    }));
                  },
                  child: ListTile(
                    title: Text(song.songName ?? '',
                        style: const TextStyle(color: Colors.white)),
                    subtitle: Text(song.singer ?? '',
                        style: const TextStyle(color: Colors.white70)),
                    leading: song.songImg != null
                        ? Image.asset(song.songImg!)
                        : null,
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
