import 'package:flutter/material.dart';

class TextWithSquare extends StatelessWidget {
  final String mainText;
  final String headText;

  TextWithSquare({required this.mainText, required this.headText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Text(
          mainText,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Positioned(
          top: -4,  // Adjusts the position of the headText
          left: -4, // Adjusts the position of the headText
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.red, // Background color of the square
              borderRadius: BorderRadius.circular(4), // Rounded corners for the square
            ),
            child: Text(
              headText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white, // Text color inside the square
              ),
            ),
          ),
        ),
      ],
    );
  }
}
