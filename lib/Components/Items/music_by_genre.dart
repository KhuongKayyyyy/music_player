import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Models/genres.dart';
import 'package:music_player/Utils/app_theme.dart';
import 'package:music_player/Utils/fake_data.dart';

class MusicByGenre extends StatelessWidget {
  final Genres genres;
  final VoidCallback onPressed;

  final List<String> hiphopImageList = FakeData().hiphopAlbumCover;
  final List<String> popImageList = FakeData().popAlbumCover;
  final List<String> rbImageList = FakeData().rbAlbumCover;
  final List<String> rockImageList = FakeData().rockAlbumCover;

  MusicByGenre({super.key, required this.genres, required this.onPressed});

  final Map<String, List<Color>> genreColors = {
    'HipHop': [Color(0xffed6863), Color(0xffbb3329)], // Red and Purple
    'Pop': [Color(0xffffd338), Color(0xffd0ae54)], // Yellow
    'R&B': [Color(0xffff8c42), Color(0xffc6622c)], // Orange
    'Rock': [Color(0xff498b80), Color(0xff7bf0e3)], // Green
  };

  @override
  Widget build(BuildContext context) {
    // Determine the appropriate image list and colors based on genre
    List<String> imageList;
    List<Color> colors;

    switch (genres.name) {
      case 'HipHop':
        imageList = hiphopImageList;
        colors = genreColors['HipHop']!;
        break;
      case 'Pop':
        imageList = popImageList;
        colors = genreColors['Pop']!;
        break;
      case 'R&B':
        imageList = rbImageList;
        colors = genreColors['R&B']!;
        break;
      case 'Rock':
        imageList = rockImageList;
        colors = genreColors['Rock']!;
        break;
      default:
        imageList = hiphopImageList; // Default to HipHop images
        colors = genreColors['HipHop']!;
        break;
    }

    double textWidth = calculateTextWidth(
      genres.name,
      TextStyle(
        color: colors[1],
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );

    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colors[0], // Background color
        ),
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 5,
              child: Text(
                genres.name,
                style: TextStyle(
                  color: colors[1], // Text color
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Positioned(
              top: 8,
              left: textWidth + 10,
              child: Text(
                "(${generateRandomNumber()}+)",
                style: TextStyle(
                  color: colors[1],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Transform.rotate(
                  angle: 0.3,
                  child: CachedNetworkImage(
                    imageUrl: imageList[0],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 30,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Transform.rotate(
                  angle: 0.2,
                  child: CachedNetworkImage(
                    imageUrl: imageList[1],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 50,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Transform.rotate(
                  angle: 0,
                  child: CachedNetworkImage(
                    imageUrl: imageList[2],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int generateRandomNumber() {
    final random = Random();
    return random.nextInt(401) + 100; // Generates a number between 100 and 500
  }

  double calculateTextWidth(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    return textPainter.size.width;
  }
}
