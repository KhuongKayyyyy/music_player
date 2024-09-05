import 'package:flutter/material.dart';
import 'package:music_player/Utils/app_theme.dart';

class MainButton extends StatelessWidget {
  String buttonText;
  VoidCallback? onPressed;
  MainButton({required this.buttonText, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppTheme.primaryColor
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}