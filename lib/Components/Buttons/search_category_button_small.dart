import 'package:flutter/material.dart';

class SearchCategoryButtonSmall extends StatelessWidget{
  final VoidCallback? onPressed;
  final String buttonText;

  const SearchCategoryButtonSmall({super.key, required this.buttonText, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey[100]
        ),
        child: Padding(
          padding:const EdgeInsets.all(10),
          child: Text(
              buttonText
          ),
        )
      ),
    );
  }
}