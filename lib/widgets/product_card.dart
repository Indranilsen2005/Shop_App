import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.backgroundColor,
  });

  final Map<String, Object> product;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: backgroundColor,
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
              height: 225,
            ),
          )
        ],
      ),
    );
  }
}
