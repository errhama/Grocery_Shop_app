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

  // List of cart items

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

// add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from the cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price

  String calculateTotal() {
    double totalePrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalePrice += double.parse(_cartItems[i][1]);
    }
    return totalePrice.toStringAsFixed(2);
  }
}
