import 'package:flutter/material.dart';
// import 'home_page.dart';
// import 'bookScreen.dart';
import 'loginScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class TravelModelClass {
  String? locationName;
  String? contryName;
  double? ticketAmmount;
  double? ratting;
  int? restaurantAwail;
  String? description;
  String? image;

  TravelModelClass(
      {this.locationName,
      this.contryName,
      this.ticketAmmount,
      this.ratting,
      this.restaurantAwail,
      this.description,
      this.image});
}

// int index = 0;

List trendingDestination = [
  TravelModelClass(
      locationName: "Goa",
      contryName: "India",
      ticketAmmount: 1299.35,
      ratting: 4.4,
      restaurantAwail: 89,
      description:
          '''Nestled along the pristine shores of the Arabian Sea, Goa is a coastal paradise renowned for its sun-kissed beaches, vibrant culture, and colonial heritage. This small state, the smallest in India by area, packs a punch with its unique blend of natural beauty, historical landmarks, and a laid-back vibe that attracts travelers from around the globe.
          Beaches are the heart and soul of Goa, offering a diverse range of experiences to suit every taste. From the lively shores of Baga and Calangute, where beach shacks serve up delectable seafood and pulsating music fills the air, to the serene stretches of Palolem and Agonda, where palm-fringed sands invite relaxation and introspection, each beach in Goa has its own charm and character.
          Goa's culinary scene is a melting pot of flavors, influenced by its multicultural heritage. From traditional Goan delicacies like fish curry and vindaloo, infused with Portuguese spices, to international cuisines ranging from Italian to Israeli, the gastronomic offerings in Goa cater to every palate and preference.''',
      image: "assets/1.jpg"),
  TravelModelClass(
      locationName: "Jammu",
      contryName: "India",
      ticketAmmount: 1599.0,
      ratting: 4.7,
      restaurantAwail: 50,
      description:
          "Jammu, often referred to as the City of Temples, is a historic and culturally rich city located in the northernmost part of India's union territory of Jammu and Kashmir. Situated on the banks of the Tawi River and surrounded by picturesque mountains, Jammu offers a fascinating blend of natural beauty, religious significance, and historical heritage.",
      image: "assets/2.jpg"),
  TravelModelClass(
      locationName: "Bali",
      contryName: "Indonesia",
      ticketAmmount: 25000,
      ratting: 4.5,
      restaurantAwail: 60,
      description:
          "If you love beaches, then Bali is the place to go! You can expect frequent heavy rainfalls with high humidity levels. The local cuisines at Bali are worth trying out too.",
      image: "assets/3.jpg"),
];

List popularDestination = [
  TravelModelClass(
      locationName: "Taj Mahal",
      contryName: "India",
      ticketAmmount: 10702,
      ratting: 4.6,
      restaurantAwail: 123,
      description:
          "The Taj Mahal is an iconic monument located in Agra, India, renowned for its breathtaking beauty and architectural grandeur. Built by the Mughal Emperor Shah Jahan in memory of his beloved wife Mumtaz Mahal, it stands as a symbol of eternal love. Constructed primarily of white marble, the Taj Mahal showcases exquisite craftsmanship, intricate detailing, and symmetrical design. Its central dome, flanked by four minarets, is particularly striking, especially during sunrise and sunset when it reflects hues of pink, orange, and gold. Recognized as a UNESCO World Heritage Site, the Taj Mahal attracts millions of visitors from around the globe each year, mesmerizing them with its timeless elegance and romantic allure.",
      image: "assets/4.jpg"),
  TravelModelClass(
      locationName: "Andaman Islands",
      contryName: "India",
      ticketAmmount: 14000,
      ratting: 4.2,
      restaurantAwail: 134,
      description:
          "The Andaman Islands are an Indian archipelago in the Bay of Bengal. These roughly 300 islands are known for their palm-lined, white-sand beaches, mangroves and tropical rainforests. Coral reefs supporting marine life such as sharks and rays make for popular diving and snorkeling sites. Indigenous Andaman Islanders inhabit the more remote islands, many of which are off limits to visitors.",
      image: "assets/5.png"),
  TravelModelClass(
      locationName: "Sahyadri",
      contryName: "India",
      ticketAmmount: 7800.0,
      ratting: 4.9,
      restaurantAwail: 140,
      description:
          '''The Sahyadri mountain range, also known as the Western Ghats, traverses the state of Maharashtra in western India, forming a majestic natural boundary between the Arabian Sea coast and the Deccan Plateau. Characterized by its rugged terrain, verdant slopes, and dense forests, the Sahyadris present a breathtaking panorama of natural beauty.
            Geographically, the Sahyadris in Maharashtra extend over a considerable expanse, stretching from the northern border with Gujarat to the southern reaches near Goa and Karnataka. This mountainous region comprises a series of parallel hills and valleys, with peaks rising to varying heights, the highest being Kalsubai at approximately 1,646 meters (5,400 feet) above sea level.''',
      image: "assets/6.png")
];

int inde = 0;
int totalseat = 0;
