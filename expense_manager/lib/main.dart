import 'package:flutter/material.dart';
import 'spash_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'transaction_screen.dart';
import 'categories.dart';
import 'graphscreen.dart';
import 'trashpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
