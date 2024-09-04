import 'package:flutter/material.dart';

class SearchCategoryButtonSmall extends StatelessWidget {
  final bool isSelected;
  final VoidCallback? onPressed;
  final String buttonText;

  const SearchCategoryButtonSmall({
    super.key,
    required this.buttonText,
    this.onPressed,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? Colors.black : Colors.grey[100],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            buttonText,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
