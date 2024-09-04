import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/main_play_button.dart';
import 'package:music_player/Models/artist.dart';

class PlaylistOfArtistItem extends StatelessWidget {
  final Artist artist;
  PlaylistOfArtistItem({required this.artist});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              height: 180,
              width: double.infinity,
              imageUrl: artist.avatarURL,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          Positioned(
            top: 5,
            right: 10,
            left: 10,
            child: Row(
              children: [
                Text(
                  artist.name,
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
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 5,  // Positioned at the bottom
            right: 10,
            left: 10,
            child: Row(
              children: [
                const MainPlayButton(),
                const Spacer(),
                Text(
                  "${getRandomNumber()}",
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int getRandomNumber() {
    final random = Random();
    int randomNumber = 50 + random.nextInt(351);
    return randomNumber;
  }
}
