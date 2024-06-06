import 'package:flutter/material.dart';
import 'package:music_app/view/gallery_screen.dart';
import 'package:music_app/view/home_screen.dart';
import 'package:music_app/view/player_scren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
