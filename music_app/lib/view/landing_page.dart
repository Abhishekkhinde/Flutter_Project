// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/discography_model.dart';
import 'package:music_app/view/cart_page.dart';
import 'package:music_app/view/favorite_screen.dart';
import 'package:music_app/view/gallery_screen.dart';
import 'package:music_app/view/profile_page.dart';
import 'package:music_app/view/search_page.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({super.key});

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentPageIndex = 2;
  //final List<SongModel> favorite = getFavoriteSong();

  final screen = [
    FavoriteScreen(favoriteSong: getFavoriteSong()),
    // FavoriteScreen(),
   const SearchScreen(),
   const GalleryScreen(),
   const CartScreen(),
  const  ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[currentPageIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
              indicatorColor: Colors.transparent,
              labelTextStyle: WidgetStateProperty.all(
                GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color.fromRGBO(157, 178, 206, 1),
                ),
              )),
          child: NavigationBar(
            backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            indicatorColor: Colors.transparent,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            selectedIndex: currentPageIndex,
            destinations: const [
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.favorite,
                  size: 30,
                  color: Color.fromRGBO(230, 154, 21, 1),
                ),
                icon: Icon(
                  Icons.favorite_border_outlined,
                  size: 30,
                ),
                label: 'Favorite',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: Color.fromRGBO(230, 154, 21, 1),
                ),
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: 'Search',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.home,
                  size: 30,
                  color: Color.fromRGBO(230, 154, 21, 1),
                ),
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.delete_outline,
                  size: 30,
                  color: Color.fromRGBO(230, 154, 21, 1),
                ),
                icon: Icon(
                  Icons.delete_outline,
                  size: 30,
                ),
                label: 'cart',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.person_sharp,
                  size: 30,
                  color: Color.fromRGBO(230, 154, 21, 1),
                ),
                icon: Icon(
                  Icons.person_sharp,
                  size: 30,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ));
  }
}
