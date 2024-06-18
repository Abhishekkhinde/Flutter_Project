import 'package:brand_store_app/view/onboarding_page.dart';
import 'package:flutter/material.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({super.key});

  @override
  State createState() => _NaviBarState();
}

class _NaviBarState extends State {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        surfaceTintColor: const Color.fromRGBO(255, 255, 255, 1),
        indicatorColor: const Color.fromRGBO(255, 255, 255, 1),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const OnboardingScreen();
                }));
              },
              child: const Image(
                image: AssetImage("assets/navigation_icon/home.png"),
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: Color.fromRGBO(255, 122, 0, 1),
              ),
            ),
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const OnboardingScreen();
                }),);
              },
              child: const Image(
                image: AssetImage("assets/navigation_icon/home.png"),
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const OnboardingScreen();
                // }));
              },
              child: const Image(
                image: AssetImage("assets/navigation_icon/search.png"),
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: Color.fromRGBO(255, 122, 0, 1),
              ),
            ),
            icon: GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const OnboardingScreen();
                // }));
              },
              child: const Image(
                image: AssetImage("assets/navigation_icon/search.png"),
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            label: "Search",
          ),
          NavigationDestination(
            selectedIcon: GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const OnboardingScreen();
                // }));
              },
              child: const Image(
                image: AssetImage("assets/navigation_icon/bag.png"),
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: Color.fromRGBO(255, 122, 0, 1),
              ),
            ),
            icon: GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const OnboardingScreen();
                // }));
              },
              child: const Image(
                image: AssetImage("assets/navigation_icon/bag.png"),
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            label: "Cart",
          ),
          NavigationDestination(
            selectedIcon: GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const OnboardingScreen();
                // }));
              },
              child: const Image(
                image: AssetImage("assets/navigation_icon/setting.png"),
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: Color.fromRGBO(255, 122, 0, 1),
              ),
            ),
            icon: GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const OnboardingScreen();
                // }));
              },
              child: const Image(
                image: AssetImage("assets/navigation_icon/setting.png"),
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            label: "Settings",
          )
        ]);
  }
}
