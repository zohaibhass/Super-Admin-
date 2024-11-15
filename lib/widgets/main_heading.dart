import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  final String title;

  const MainHeading({super.key, 
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 30),
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFF474747),
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 8), // Add some spacing between the text and divider
          const Divider(
            color: Color(0xffDADADA),
            thickness: 1, // Optional: Adjust thickness for visibility
          ),
        ],
      ),
    );
  }
}
