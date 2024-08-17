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

List<HomeModelClass> popularHome = [
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
    rating: 4.9,
  ),
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
    rating: 4.7,
  ),
  HomeModelClass(
    image: 'assets/1.png',
    villaName: 'Sunset Retreat',
    location: 'California, Malibu Beach',
    ammout: 8500,
    bathrooms: 4,
    bedrooms: 3,
    size: 3200,
    about:
        'Experience luxury living in this exquisite beachfront villa with panoramic ocean views. Perfect for unwinding and soaking in the sunsets. Modern amenities and elegant interiors make it a dream getaway.',
    rating: 4.9,
  ),
  HomeModelClass(
    image: 'assets/2.jpg',
    villaName: 'Mountain Escape',
    location: 'Aspen, Colorado',
    ammout: 6500,
    bathrooms: 5,
    bedrooms: 4,
    size: 4500,
    about:
        'Nestled in the heart of Aspen, this mountain villa offers stunning views and tranquility. Enjoy the rustic charm combined with modern comfort, perfect for a winter retreat.',
    rating: 4.8,
  ),
  HomeModelClass(
    image: 'assets/3.jpg',
    villaName: 'Urban Oasis',
    location: 'New York, Manhattan',
    ammout: 9800,
    bathrooms: 3,
    bedrooms: 2,
    size: 2100,
    about:
        'Located in the vibrant heart of Manhattan, this modern villa offers the perfect blend of city life and peaceful retreat. High-end finishes, a rooftop garden, and sweeping city views.',
    rating: 4.6,
  ),
  HomeModelClass(
    image: 'assets/4.jpg',
    villaName: 'Countryside Manor',
    location: 'Tuscany, Italy',
    ammout: 7200,
    bathrooms: 6,
    bedrooms: 5,
    size: 6000,
    about:
        'Escape to the rolling hills of Tuscany in this expansive countryside manor. A perfect blend of historic charm and modern luxury, ideal for a romantic getaway or a family vacation.',
    rating: 4.4,
  ),
  HomeModelClass(
    image: 'assets/5.jpg',
    villaName: 'Desert Dream',
    location: 'Dubai, Palm Jumeirah',
    ammout: 11200,
    bathrooms: 7,
    bedrooms: 6,
    size: 7500,
    about:
        'A luxurious villa located on the iconic Palm Jumeirah. This property offers unmatched luxury with private beach access, a state-of-the-art infinity pool, and breathtaking views of the Arabian Gulf.',
    rating: 4.3,
  ),
  HomeModelClass(
    image: 'assets/6.jpg',
    villaName: 'Lakeside Retreat',
    location: 'Lake Tahoe, Nevada',
    ammout: 7800,
    bathrooms: 4,
    bedrooms: 4,
    size: 4200,
    about:
        'Enjoy a serene escape in this stunning lakeside villa, featuring modern amenities, large windows with lake views, and a private dock.',
    rating: 4.7,
  ),
  HomeModelClass(
    image: 'assets/7.jpg',
    villaName: 'Urban Penthouse',
    location: 'Chicago, Illinois',
    ammout: 10200,
    bathrooms: 3,
    bedrooms: 3,
    size: 3000,
    about:
        'A luxurious penthouse in downtown Chicago with breathtaking skyline views, high-end finishes, and a private rooftop terrace.',
    rating: 4.9,
  ),
  HomeModelClass(
    image: 'assets/8.png',
    villaName: 'Beach Paradise',
    location: 'Miami, Florida',
    ammout: 11500,
    bathrooms: 5,
    bedrooms: 4,
    size: 48000,
    about:
        'A contemporary beachfront villa in Miami, offering direct beach access, an infinity pool, and a spacious open-concept living area.',
    rating: 4.8,
  ),
  HomeModelClass(
    image: 'assets/9.jpg',
    villaName: 'Hilltop Haven',
    location: 'Austin, Texas',
    ammout: 6400,
    bathrooms: 4,
    bedrooms: 3,
    size: 3500,
    about:
        'Perched atop the hills of Austin, this villa features panoramic city views, a private pool, and an expansive deck for outdoor entertaining.',
    rating: 4.6,
  ),
  HomeModelClass(
    image: 'assets/10.jpg',
    villaName: 'Wine Estate',
    location: 'Napa Valley, California',
    ammout: 9400,
    bathrooms: 5,
    bedrooms: 4,
    size: 5200,
    about:
        'A charming estate in the heart of Napa Valley, surrounded by vineyards, offering luxury accommodations and an outdoor dining area.',
    rating: 4.9,
  ),
];

List<HomeModelClass> nearByHome = [
  HomeModelClass(
    image: 'assets/near_by_you/12.jpg',
    villaName: 'Countryside Charm',
    location: 'Hudson Valley, New York',
    ammout: 6400,
    bathrooms: 3,
    bedrooms: 3,
    size: 3500,
    about:
        'Escape to this charming countryside villa in Hudson Valley. It offers peaceful surroundings, a large garden, and cozy interiors. Perfect for a quiet retreat.',
    rating: 4.6,
  ),
  HomeModelClass(
    image: 'assets/near_by_you/13.jpg',
    villaName: 'Desert Oasis',
    location: 'Scottsdale, Arizona',
    ammout: 7800,
    bathrooms: 4,
    bedrooms: 4,
    size: 4200,
    about:
        'Experience luxury in the desert with this stunning villa. It features a private pool, spacious living areas, and beautiful desert landscape views. Perfect for relaxation.',
    rating: 4.8,
  ),
  HomeModelClass(
    image: 'assets/near_by_you/14.jpg',
    villaName: 'Lakefront Luxury',
    location: 'Lake Tahoe, California',
    ammout: 9500,
    bathrooms: 5,
    bedrooms: 5,
    size: 5000,
    about:
        'This luxurious lakefront villa offers stunning views of Lake Tahoe, a private dock, and modern amenities. Ideal for both summer and winter getaways.',
    rating: 4.9,
  ),
  HomeModelClass(
    image: 'assets/8.png',
    villaName: 'Jumeriah Golf Villa',
    location: 'New York, New York',
    ammout: 13200,
    bathrooms: 3,
    bedrooms: 2,
    size: 5900,
    about:
        'A stylish villa located in the bustling streets of Manhattan. This urban retreat features modern architecture, a private rooftop garden, and close proximity to top attractions.',
    rating: 4.9,
  ),
];
