import 'dart:math';
import 'package:flutter/material.dart';
import 'package:music_player/Utils/app_theme.dart';

class CustomPlaylistItem extends StatelessWidget {
  final Color primaryColorPurple = const Color(0xff7d4cff);
  final Color secondaryColorPurple = const Color(0xff9487f5);

  final Color primaryColorYellow = const Color(0xffffd338);
  final Color secondaryColorYellow = const Color(0xffffda47);

  final Color primaryColorOrange = const Color(0xffff8c42);
  final Color secondaryColorOrange = const Color(0xffff954b);

  final Color secondaryColorGreen = const Color(0xff3ddc97);

  final Color secondaryColorBlue = const Color(0xff3896ff);
  final Color secondaryColorRed = AppTheme.primaryColor;

  final String playlistName;

  CustomPlaylistItem({super.key, required this.playlistName});

  @override
  Widget build(BuildContext context) {
    // Get the color based on the playlist name
    final Color backgroundColor = getColorBasedOnName(playlistName);

    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor, // Use the background color based on the playlist name
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  playlistName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                const Text(
                  "Playlist",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 9),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(3),
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  "${getRandomNumber()}",
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  int getRandomNumber() {
    final random = Random();
    int randomNumber = 50 + random.nextInt(351);
    return randomNumber;
  }

  // Function to get the color based on the playlist name
  Color getColorBasedOnName(String name) {
    switch (name.toLowerCase()) {
      case 'liked songs':
        return primaryColorPurple;
      case 'downloaded':
        return primaryColorYellow;
      case 'rock mix':
        return primaryColorOrange;
      case 'pop mix':
        return secondaryColorBlue;
      case 'hip hop':
        return secondaryColorGreen;
      default:
        return secondaryColorRed; 
    }
  }
}
