import 'package:flutter/material.dart';

import 'package:shop_app/models/dummy_data.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartProduct = cart[index];

          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                cartProduct['imageUrl'].toString(),
              ),
            ),
            title: Text(
              cartProduct['title'].toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: Text(
              '₹ ${cartProduct['price'].toString()}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Colors.red,
              iconSize: 30,
            ),
          );
        },
      ),
    );
  }
}
