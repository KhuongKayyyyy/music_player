import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/main_play_button.dart';
import 'package:music_player/Utils/app_theme.dart';

import '../../Models/song.dart';

class PlaylistByEditor extends StatelessWidget {
  final Song song;

  final List<Color> colors = [
    const Color(0xff7d4cff), // Purple
    const Color(0xffffd338), // Yellow
    const Color(0xffff8c42), // Orange
    const Color(0xff48d6f6), // Blue
  ];

  PlaylistByEditor({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    final Color randomColor = colors[Random().nextInt(colors.length)];

    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: randomColor, // Use the random color here
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10,
            bottom: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: song.imgURL,
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${generateRandomNumber()} followers',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Today\'s top hits',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 10,
            right: 10,
            child: MainPlayButton(),
          ),
        ],
      ),
    );
  }
}

int generateRandomNumber() {
  final random = Random();
  return random.nextInt(100000000) + 1;
}
