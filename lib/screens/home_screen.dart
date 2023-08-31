import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final filters = const ['All', 'Adidas', 'Nike', 'Bata', 'Puma'];
  var selectingBrand = 'All';

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
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filters.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectingBrand = filters[index];
                      });
                    },
                    child: Chip(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 13,
                      ),
                      label: Text(
                        filters[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      backgroundColor: selectingBrand == filters[index]
                          ? Theme.of(context).colorScheme.primary
                          : const Color.fromARGB(255, 233, 232, 232),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
