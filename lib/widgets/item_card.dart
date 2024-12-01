// lib/widgets/product_card.dart
import 'package:flutter/material.dart';
import 'package:lab1_213094/models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  const ItemCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: [
            Image.asset(
              item.image,
              fit: BoxFit.fill,
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                item.name,
                style: const TextStyle(
                  fontFamily: 'ComicSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              '${item.price.toStringAsFixed(0)} \$',
              style: TextStyle(color: Colors.red[600]),
            ),
          ],
        ),
      ),
    );
  }
}
