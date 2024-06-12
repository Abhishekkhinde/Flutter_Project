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
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      selectedIndex: currentPageIndex,
      indicatorShape: null,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      destinations: [
        const NavigationDestination(
          icon: Icon(
            Icons.home,
            size: 24,
            color: Color.fromRGBO(126, 128, 143, 1),
          ),
          label: "Home",
        ),
        const NavigationDestination(
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 24,
              color: Color.fromRGBO(126, 128, 143, 1),
            ),
            label: "Service"),
        NavigationDestination(
          icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 24,
                color: Color.fromRGBO(126, 128, 143, 1),
              )),
          label: "Shop",
        ),
        NavigationDestination(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.watch_later_outlined,
                  size: 24,
                  color: Color.fromRGBO(126, 128, 143, 1),
                )),
            label: "History"),
        NavigationDestination(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_sharp,
                  size: 24,
                  color: Color.fromRGBO(126, 128, 143, 1),
                )),
            label: "History")
      ],
    );
  }
}
