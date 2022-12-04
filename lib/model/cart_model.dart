import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
// list of items on sale
  final List _shopItems = [
    // [itemName , itemPrice, imagePath, color]
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/images/banana.jpg", Colors.yellow],
    ["Chiken", "12.80", "lib/images/chicken.jpg", Colors.brown],
    ["Water", "1.00", "lib/images/water.jpg", Colors.green]
  ];

  get shopItems => _shopItems;
}
