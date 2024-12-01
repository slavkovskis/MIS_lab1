class Item {
  final String name;
  final String image;
  final String description;
  final double price;

  Item({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });
}

final List<Item> itemList = [
  Item(
    name: "Travis Scott Hat",
    image: 'assets/travis_scott_hat.jpg',
    description: 'Limited edition hat.',
    price: 1000,
  ),
  Item(
    name: 'Clown Shoes',
    image: 'assets/clown_shoes.jpg',
    description: 'Clown Shoes for goofing around.',
    price: 5,
  ),
  Item(
    name: 'One Piece Jersey',
    image: 'assets/one_piece_jersey.jpg',
    description: 'Limited edition one of 12 One Piece jerseys.',
    price: 10000,
  ),
];
