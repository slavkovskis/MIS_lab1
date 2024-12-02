import 'package:flutter/material.dart';
import 'package:lab1_213094/models/item.dart';
import 'package:lab1_213094/screens/details.dart';
import 'package:lab1_213094/widgets/item_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('213094',
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
              )),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.fromLTRB(7.5, 7.5, 7.5, 0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, // Maximum width of each grid item
          childAspectRatio: 0.75, // Aspect ratio of the grid items
          crossAxisSpacing: 7.5, // Horizontal space between grid items
          mainAxisSpacing: 7.5, // Vertical space between grid items
        ),
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          final item = itemList[index];
          return ItemCard(
            item: item,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetails(item: item),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
