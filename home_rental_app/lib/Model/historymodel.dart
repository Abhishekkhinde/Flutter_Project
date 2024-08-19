class Historymodel {
  final String? name;
  final bool? status;
  final String? image;
  final String? ammount;
  final String? location;
  Historymodel(
      {
      required this.name,
      required this.status,
      required this.ammount,
      required this.image,
      required this.location});
}

List<Historymodel> historyData = [];
