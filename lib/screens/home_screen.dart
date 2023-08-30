import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final border = const OutlineInputBorder(
    borderRadius: BorderRadius.horizontal(
      left: Radius.circular(50),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Shoes\nCollection',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      border: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
