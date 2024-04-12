import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      
    );
  }
}
