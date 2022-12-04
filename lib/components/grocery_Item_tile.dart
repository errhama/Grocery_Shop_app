import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  const GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
          decoration: BoxDecoration(
              color: color[100], borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //image
              Image.asset(
                imagePath,
                height: 64,
              ),
              // item name
              Text(itemName),
              // price + button

              MaterialButton(
                  onPressed: () {},
                  color: color[800],
                  child: Text(
                    '\$' + itemPrice,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))
            ],
          )),
    );
  }
}
