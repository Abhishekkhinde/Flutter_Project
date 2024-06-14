import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        const SizedBox(
          width: 30,
        ),
        // NavigationDestination(
        //   icon: IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.shopping_cart_outlined,
        //         size: 24,
        //         color: Color.fromRGBO(126, 128, 143, 1),
        //       )),
        //   label: "Shop",
        // ),
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
