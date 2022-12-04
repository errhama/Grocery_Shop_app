import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/grocery_Item_tile.dart';
import '../model/cart_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 48),

        // good morning
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(" good morning ")),

        // let's order fresh items for you

        Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Let's order fresh items for you ",
                style: GoogleFonts.notoSerif(
                    fontSize: 36, fontWeight: FontWeight.bold))),
        // divider
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Divider(
            thickness: 4,
          ),
        ),

        SizedBox(height: 24),

        // fresh items + grid

        Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              "Fresh Items",
              style: TextStyle(fontSize: 16),
            )),

        Expanded(child: Consumer<CartModel>(
          builder: (context, value, child) {
            return GridView.builder(
                itemCount: value.shopItems.length,
                padding: EdgeInsets.all(12),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: ((context, index) {
                  return GroceryItemTile(
                    itemName: value.shopItems[index][0],
                    itemPrice: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    color: value.shopItems[index][3],
                  );
                }));
          },
        ))
      ]),
    );
  }
}
