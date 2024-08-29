import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/best_album.dart';
import 'package:music_player/Utils/fake_data.dart';

class BestAlbumSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
            "Featured in 100 Best Albums",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),
        BestAlbum(album: FakeData.albums.first,)
      ],
    );
  }
}