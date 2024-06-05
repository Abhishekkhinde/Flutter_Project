// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({super.key});

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      selectedIndex: currentPageIndex,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Favorite',
        ),
        NavigationDestination(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.card_travel),
          label: 'cart',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.person_sharp,
            color: Color.fromRGBO(230, 154, 21, 1),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
