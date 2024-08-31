import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/main_play_button.dart';

import '../../Models/song.dart';

class PlaylistByUser extends StatelessWidget {
  final Song song;

  PlaylistByUser({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: song.imgURL,
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              ),
              const Positioned(
                bottom: 10,
                right: 10,
                child: MainPlayButton(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5,),
        Text(song.title, style:const TextStyle(fontWeight: FontWeight.w700),),
        // Text("Playlist by ·" + song.artistName),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: [
              const TextSpan(text: "Playlist by ", style: TextStyle(color: Colors.grey)),
              const TextSpan(text: "·", style: TextStyle(color: Colors.grey)),
              TextSpan(text: " ${song.artistName}", style: const TextStyle(color: Colors.grey)),
            ],
          ),
        )
      ],
    );
  }
}
