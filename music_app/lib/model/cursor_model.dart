class CursorModel {
  String? curseImage;
  String? curseName;

  CursorModel({required this.curseImage, required this.curseName});
}

List<CursorModel> cursorList = [
  CursorModel(
    curseImage: 'assets/curseimage/gal1.png',
    curseName: "A.L.O.N.E",
  ),
  CursorModel(
    curseImage: 'assets/curseimage/images.jpeg',
    curseName: "W.A.N.K",
  ),
  CursorModel(
    curseImage: 'assets/curseimage/resso.jpg',
    curseName: "R.E.S.S.O",
  ),
];
