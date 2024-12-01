import 'package:flutter/material.dart';
import 'package:lab1_213094/models/item.dart';

class ItemCardDetails extends StatelessWidget {
  final Item item;

  const ItemCardDetails({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              item.image,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            item.name,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            item.description,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Text(
            '${item.price.toStringAsFixed(0)} \$',
            style: TextStyle(fontSize: 20, color: Colors.red[600], fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
