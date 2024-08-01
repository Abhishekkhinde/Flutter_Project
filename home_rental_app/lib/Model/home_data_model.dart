class HomeModelClass {
  String? image;
  String? villaName;
  String? location;
  int? ammout;
  int? bedrooms;
  int? bathrooms;
  int? size;
  String? about;
  double? rating;

  HomeModelClass(
      {this.image,
      this.villaName,
      this.location,
      this.ammout,
      this.bathrooms,
      this.bedrooms,
      this.size,
      this.about,
      this.rating});
}

List popularHome = [
  HomeModelClass(
      image: 'assets/nighthillvilla.png',
      villaName: 'Night Hill Villa',
      location: 'London,Night Hill',
      ammout: 5900,
      bathrooms: 6,
      bedrooms: 5,
      size: 7000,
      about:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet',
      rating: 4.9),
  HomeModelClass(
      image: 'assets/popvilla5.jpeg',
      villaName: 'Night Villa',
      location: 'London,New Park',
      ammout: 4900,
      bathrooms: 6,
      bedrooms: 5,
      size: 5000,
      about:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet',
      rating: 4.7),
];
