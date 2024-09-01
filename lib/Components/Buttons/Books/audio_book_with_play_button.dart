import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/main_play_button.dart';
import 'package:music_player/Models/book.dart';

class AudioBookWithPlayButton extends StatelessWidget {
  final Book book;

  AudioBookWithPlayButton({required this.book});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: book.imgURL,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.bookAuthor,
                style: const TextStyle(color: Colors.grey),
              ),
              Text(
                book.bookName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                generateRandomTime(),
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        const MainPlayButton(),
      ],
    );
  }

  String generateRandomTime() {
    final random = Random();

    // Generate random hours (0 to 23)
    final hours = random.nextInt(24);

    // Generate random minutes (0 to 59)
    final minutes = random.nextInt(60);

    // Format the time as "Xh Ymin"
    return '${hours}h ${minutes.toString().padLeft(2, '0')}min';
  }
}
