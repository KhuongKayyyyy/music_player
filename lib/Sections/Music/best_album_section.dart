import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Playlist/best_album_item.dart';
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
        BestAlbumItem(album: FakeData.albums.first,)
      ],
    );
  }
}