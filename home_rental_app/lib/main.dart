import 'package:flutter/material.dart';
import 'package:home_rental_app/View/getStartedScreen.dart';
import 'package:home_rental_app/View/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
