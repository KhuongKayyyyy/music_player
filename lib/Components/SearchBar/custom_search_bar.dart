import 'package:flutter/material.dart';
import 'package:music_player/Utils/app_theme.dart';

class CustomSearchBar extends StatelessWidget {
  String textHint;
  bool isWhite;
  CustomSearchBar({required this.textHint, required this.isWhite});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color:isWhite ? Colors.white : Colors.grey[100], // Background color of the search bar
        borderRadius: BorderRadius.circular(15), // Rounded corners
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search, // Search icon at the beginning
            color: Colors.grey,
          ),
          const SizedBox(width: 8), // Space between icon and text
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: textHint,
                hintStyle: TextStyle(
                  color: AppTheme.inkGrey, // Text color
                ),
                border: InputBorder.none, // Remove underline border
              ),
              style: const TextStyle(
                color: Colors.black, // Text color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
