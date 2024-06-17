import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/dashboard.dart';

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
      indicatorColor: const Color.fromRGBO(255, 255, 255, 1),
      surfaceTintColor: const Color.fromRGBO(255, 255, 255, 1),
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
        NavigationDestination(
          enabled: true,
          selectedIcon: const Icon(
            Icons.home,
            size: 24,
            color: Color.fromRGBO(245, 146, 69, 1),
          ),
          icon: GestureDetector(
            child: const Icon(
              Icons.home,
              size: 24,
              color: Color.fromRGBO(126, 128, 143, 1),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Dashboard();
                },
              ));
            },
          ),
          label: "Home",
        ),
        NavigationDestination(
            enabled: true,
            selectedIcon: const Icon(
              Icons.favorite_border_outlined,
              size: 24,
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
            icon: GestureDetector(
              child: const Icon(
                Icons.favorite_border_outlined,
                size: 24,
                color: Color.fromRGBO(126, 128, 143, 1),
              ),
              onTap: () {},
            ),
            label: "Service"),
        const SizedBox(
          width: 30,
        ),
        NavigationDestination(
            enabled: true,
            selectedIcon: const Icon(
              Icons.watch_later_outlined,
              size: 24,
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
            icon: GestureDetector(
              child: const Icon(
                Icons.watch_later_outlined,
                size: 24,
                color: Color.fromRGBO(126, 128, 143, 1),
              ),
              onTap: () {},
            ),
            label: "History"),
        NavigationDestination(
            enabled: true,
            selectedIcon: const Icon(
              Icons.person_sharp,
              size: 24,
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
            icon: GestureDetector(
              child: const Icon(
                Icons.person_sharp,
                size: 24,
                color: Color.fromRGBO(126, 128, 143, 1),
              ),
              onTap: () {},
            ),
            label: "Profile")
      ],
    );
  }
}

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  State createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: EdgeInsets.only(top: 10),
      height: 75,
      width: 75,
      child: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        child: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 28,
                  color: Colors.white,
                ),
                Text(
                  "Shop",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
