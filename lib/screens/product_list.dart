import 'package:flutter/material.dart';

import 'package:shop_app/models/dummy_data.dart';
import 'package:shop_app/screens/product_details.dart';
import 'package:shop_app/widgets/product_card.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final filters = const ['All', 'Adidas', 'Nike', 'Bata', 'Puma'];
  var selectingBrand = 'All';

  final border = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Color.fromARGB(255, 172, 171, 171),
    ),
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
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Shoes\nCollection',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Expanded(
                  child: TextField(
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: const TextStyle(fontSize: 20),
                      prefixIcon: const Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                      prefixIconColor: Colors.grey,
                    ),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      label: Text(
                        filters[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      backgroundColor: selectingBrand == filters[index]
                          ? Theme.of(context).colorScheme.primary
                          : const Color.fromARGB(255, 237, 236, 236),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsScreen(
                          product: products[index],
                        ),
                      ),
                    );
                  },
                  child: ProductCard(
                    backgroundColor: index.isOdd
                        ? const Color.fromARGB(255, 168, 212, 248)
                        : const Color.fromARGB(255, 237, 236, 236),
                    product: products[index],
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

