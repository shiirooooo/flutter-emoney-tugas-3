import 'package:flutter/material.dart';

import 'menu_page.dart';

void main() {
  runApp(const EMoneyApp());
}

class EMoneyApp extends StatelessWidget {
  const EMoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Money',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF18745B)),
        scaffoldBackgroundColor: const Color(0xFFF6F7F8),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF18745B),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      home: const MenuPage(),
    );
  }
}
