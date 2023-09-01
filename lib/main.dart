import 'package:flutter/material.dart';

import 'package:shop_app/widgets/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 250, 225, 2),
          primary: const Color.fromARGB(255, 250, 225, 2),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
