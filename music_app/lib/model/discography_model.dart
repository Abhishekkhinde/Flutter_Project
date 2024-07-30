import 'package:music_app/model/discography_model.dart';

class SongModel {
  final String? songName;
  final String? songUrl;
  final String? songImg;
  final String? year;
  final String? singer;
  String? description;
  bool isFavorite = false;

  SongModel(
      {required this.songName,
      required this.songUrl,
      required this.songImg,
      required this.year,
      required this.description,
      required this.isFavorite,
      required this.singer});
}

List<SongModel> dicographySong = [
  SongModel(
    songName: "Avengers",
    songUrl: "audio/avengers.mp3",
    songImg: "assets/curseimage/avenger.jpg",
    year: "2022",
    singer: "Avenger",
    description: "Avengers BGM",
    isFavorite: false,
  ),
  SongModel(
    songName: "Thor",
    songUrl: "audio/thor.mp3",
    songImg: "assets/curseimage/ragnarok.jpg",
    year: "2021",
    singer: "Thorrr",
    description: "Thor Ragnarok",
    isFavorite: true,
  ),
  SongModel(
    songName: "Bad Bone",
    songUrl: "audio/bad-to-the-bone-21498.mp3",
    songImg: "assets/curseimage/s5.jpg",
    year: "2020",
    singer: "Bad",
    description: "Bad to the bone",
    isFavorite: false,
  ),
  SongModel(
    songName: "Guitar Audio",
    songUrl: "audio/guitar.mp3",
    songImg: "assets/curseimage/guitar.jpg",
    year: "2019",
    singer: "Guitar",
    description: "Guitar Song",
    isFavorite: true,
  ),
  SongModel(
    songName: "Instrumental",
    songUrl: "audio/instrument.mp3",
    songImg: "assets/curseimage/gal1.png",
    year: "2018",
    singer: "Instrument",
    description: "Instrumental Song",
    isFavorite: false,
  ),
  SongModel(
    songName: "Instrumental 2",
    songUrl: "audio/mu.mp3",
    songImg: "assets/curseimage/123.jpg",
    year: "2017",
    singer: "Instrument",
    description: "Instrumental 2 Song",
    isFavorite: false,
  ),
  SongModel(
    songName: "Hollywood bgm",
    songUrl: "audio/bgm.mp3",
    songImg: "assets/curseimage/s3.jpg",
    year: "2020",
    singer: "Tyler Swift",
    description: "Hollywwod BGM",
    isFavorite: false,
  ),
];

List<SongModel> popularSong = [
  SongModel(
      songName: "Mere meheboob",
      songUrl: "audio/1.mp3",
      songImg: "assets/discography_song/image/1.jpg",
      year: "2024",
      singer: "Udit Narayan",
      description: "Mere Mehboob Mere Sanam",
      isFavorite: false),
  SongModel(
      songName: "Husn Tera",
      songUrl: "audio/2.mp3",
      songImg: "assets/discography_song/image/21.jpg",
      year: "2024",
      singer: "Karan Aujla",
      description: "Husn Tera Tauba Tauba",
      isFavorite: false),
  SongModel(
      songName: "Jaanam",
      songUrl: "audio/3.mp3",
      songImg: "assets/discography_song/image/3.jpg",
      year: "2024",
      description: "Jaanam",
      isFavorite: true,
      singer: "vishal mishara"),
  SongModel(
      songName: "Ram Siya Ram",
      songUrl: "audio/Ram_siya_Ram_song.mp3",
      songImg: "assets/discography_song/image/Ram_siya_ram_im.jpg",
      year: "2023",
      description: "Ram Siya Ram",
      isFavorite: false,
      singer: "Sachet Tandon"),
  SongModel(
      songName: "Heeriye",
      songUrl: "audio/Heeriye_song.mp3",
      songImg: "assets/discography_song/image/heeriye.jpeg",
      year: "2023",
      description: "Heeriye Heeriye Mp3",
      isFavorite: false,
      singer: "Arijit Singh"),
  SongModel(
      songName: "Maan Meri Jaan",
      songUrl: "audio/Maan_meri_jaan.mp3",
      songImg: "assets/discography_song/image/maan_meri_jaanimage.jpg",
      year: "2020",
      description: "Maan meri jaan hindi song",
      isFavorite: false,
      singer: "King")
];

List<SongModel> getFavoriteSong() {
  List<SongModel> favSongList = popularSong + dicographySong;
  return favSongList.where((song) => song.isFavorite == true).toList();
}
