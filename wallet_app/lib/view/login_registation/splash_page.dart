import 'package:flutter/material.dart';
import 'package:wallet_app/view/login_registation/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 69, 233, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 90, right: 90),
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }),
              );
            },
            child: Image.asset("assets/splash_image.png"),
          ),
        ),
      ),
    );
  }
}
