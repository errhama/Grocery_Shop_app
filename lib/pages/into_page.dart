import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // logo
        Padding(
          padding: const EdgeInsets.all(80.0),
          child: Image.asset("lib/images/avocado.png"),
        ),

        // we deliver groceries at your doorstep
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            "we deliver groceries at your doorstep",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
                fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 24),
        // fresh item every day
        Text(
          "Fresh items everyday",
          style: TextStyle(color: Colors.grey[600]),
        ),
        const Spacer(),
        // get started button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const HomePage();
          })),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(24),
            child: const Text("Get started",
                style: TextStyle(color: Colors.white)),
          ),
        ),

        const Spacer(),
      ],
    ));
  }
}
