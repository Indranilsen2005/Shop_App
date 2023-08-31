import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Map<String, Object> product;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 385,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 233, 232, 232),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product['title'].toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 5),
          Text(
            '₹ ${product['price'].toString()}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Center(
            child: Image.asset(
              product['imageUrl'].toString(),
              height: 300,
            ),
          )
        ],
      ),
    );
  }
}
