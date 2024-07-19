class DiscographyModel {
  final String? songName;
  final String? songUrl;
  final String? songImg;
  final String? year;
  final String? singer;
  String? description;
  bool isFavorite = false;

  DiscographyModel(
      {required this.songName,
      required this.songUrl,
      required this.songImg,
      required this.year,
      required this.description,
      required this.isFavorite,
      required this.singer});
}

List<DiscographyModel> dicographySong = [
  DiscographyModel(
      songName: "Mere meheboob",
      songUrl: "audio/1.mp3",
      songImg: "assets/discography_song/image/1.jpg",
      year: "2024",
      singer: "Udit Narayan",
      description: "Mere Mehboob Mere Sanam",
      isFavorite: false),
  DiscographyModel(
      songName: "Husn Tera",
      songUrl: "audio/2.mp3",
      songImg: "assets/discography_song/image/21.jpg",
      year: "2024",
      singer: "Karan Aujla",
      description: "Husn Tera Tauba Tauba",
      isFavorite: false),
  DiscographyModel(
      songName: "Jaanam",
      songUrl: "audio/3.mp3",
      songImg: "assets/discography_song/image/3.jpg",
      year: "2024",
      description: "Jaanam",
      isFavorite: false,
      singer: "vishal mishara"),
  DiscographyModel(
      songName: "Ram Siya Ram",
      songUrl: "audio/Ram_siya_Ram_song.mp3",
      songImg: "assets/discography_song/image/Ram_siya_ram_im.jpg",
      year: "2023",
      description: "Ram Siya Ram",
      isFavorite: false,
      singer: "Sachet Tandon"),
  DiscographyModel(
      songName: "Heeriye",
      songUrl: "audio/Heeriye_song.mp3",
      songImg: "assets/discography_song/image/heeriye.jpeg",
      year: "2023",
      description: "Heeriye Heeriye Mp3",
      isFavorite: false,
      singer: "Arijit Singh"),
  DiscographyModel(
      songName: "Maan Meri Jaan",
      songUrl: "audio/Maan_meri_jaan.mp3",
      songImg: "assets/discography_song/image/maan_meri_jaanimage.jpg",
      year: "2020",
      description: "Maan meri jaan hindi song",
      isFavorite: false,
      singer: "King")
];
