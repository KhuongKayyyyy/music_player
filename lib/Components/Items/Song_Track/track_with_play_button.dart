import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/main_play_button.dart';

import '../../../Models/song.dart';

class TrackWithPlayButton extends StatelessWidget {
  final Song song;

  TrackWithPlayButton({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: song.imgURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(song.title),
                const SizedBox(height: 5),
                Text(song.artistName, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const MainPlayButton(), // Positioned to the right of the item
        ],
      ),
    );
  }
}
