import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/Playlist/mixed_playlist_big.dart';
import 'package:music_player/Utils/fake_data.dart';

class PlaylistSection extends StatelessWidget{
  String playlistSectionTitle;
  PlaylistSection({required this.playlistSectionTitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            playlistSectionTitle,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index){
              List<String> title = ["GET UP!","CHILL","NEW MUSIC"];
              return Padding(
                padding:const EdgeInsets.only(left: 10),
                child: MixedPlaylistBig(artistList: FakeData.artists.take(5).toList(), mixedPlaylistTitle: title.elementAt(index),),
              );
            },
          ),
        )
      ],
    );
  }
}