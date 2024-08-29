import 'package:flutter/material.dart';
import 'package:music_player/Utils/app_theme.dart';

class AddMusicSuccessfulyDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(20), // Add some padding if needed
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  width: 2,
                  color: AppTheme.primaryColor,
                ),
              ),
              child: Icon(Icons.check, size: 50, color: AppTheme.primaryColor),
            ),
            const SizedBox(height: 10), // Add some spacing between elements
            const Text("Added to", style: TextStyle(fontWeight: FontWeight.bold)),
            const Text("My music"),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
