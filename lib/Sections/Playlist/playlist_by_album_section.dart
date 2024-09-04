import 'dart:math';

import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Playlist/playlist_by_album_item.dart';
import 'package:music_player/Utils/fake_data.dart';

import '../../Components/Items/Playlist/add_playlist_item.dart';
import '../../Models/album.dart';

class PlaylistByAlbumSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AddPlaylistItem(playListName: "Add Album"),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: PlaylistByAlbumItem(album: FakeData.albums.first),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: PlaylistByAlbumItem(album: FakeData.albums.elementAt(1)),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: PlaylistByAlbumItem(album: FakeData.albums.elementAt(2)),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: PlaylistByAlbumItem(album: FakeData.albums.elementAt(3)),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: PlaylistByAlbumItem(album: FakeData.albums.elementAt(4)),
            )
          ],
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}