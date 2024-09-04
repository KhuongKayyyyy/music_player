import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Playlist/playlist_of_artist_item.dart';
import 'package:music_player/Utils/fake_data.dart';

import 'add_playlist_item.dart';

class PlaylistByArtistSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AddPlaylistItem(playListName: "Add Playlist"),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: PlaylistOfArtistItem(artist: FakeData.artists.elementAt(0)),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: PlaylistOfArtistItem(artist: FakeData.artists.elementAt(1)),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: PlaylistOfArtistItem(artist: FakeData.artists.elementAt(2)),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: PlaylistOfArtistItem(artist: FakeData.artists.elementAt(3)),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: PlaylistOfArtistItem(artist: FakeData.artists.elementAt(4)),
            )
          ],
        ),
      ],
    );
  }
}