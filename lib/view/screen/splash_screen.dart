import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, 'home'),
    );
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://wallpapers.com/images/hd/iphone-x-valorant-background-aeer4s7de1fccouh.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
