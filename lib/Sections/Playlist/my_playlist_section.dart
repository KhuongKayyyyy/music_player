import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Playlist/add_playlist_item.dart';
import 'package:music_player/Components/Items/Playlist/custom_playlist_item.dart';

class MyPlaylistSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AddPlaylistItem(playListName: "Add Playlist"),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: CustomPlaylistItem(playlistName:"Liked Songs",),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: CustomPlaylistItem(playlistName:"Downloaded",),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: CustomPlaylistItem(playlistName:"Pop mix",),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: CustomPlaylistItem(playlistName:"Rock mix",),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: CustomPlaylistItem(playlistName:"Hip hop",),
            )
          ],
        ),
      ],
    );
  }
}