import 'package:flutter/material.dart';
import 'package:lab1_213094/widgets/item_card_details.dart';
import 'package:lab1_213094/models/item.dart';
import 'package:lab1_213094/widgets/item_card.dart';

class ItemDetails extends StatelessWidget {
  final Item item;

  const ItemDetails({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            item.name,
            style: const TextStyle(
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
      body: ItemCardDetails(item: item),
    );
  }
}
