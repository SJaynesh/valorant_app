import 'package:flutter/material.dart';
import 'package:valorant_app/view/screen/home_page.dart';
import 'package:valorant_app/view/screen/splash_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        'home': (context) => const HomePage(),
      },
    );
  }
}
