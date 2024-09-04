import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/playlist_by_user.dart';
import 'package:music_player/Sections/Music/music_by_genre_section.dart';
import 'package:music_player/Sections/Music/playlist_by_category_section.dart';
import 'package:music_player/Utils/fake_data.dart';

import '../../Utils/app_theme.dart';

class ExploreMusic extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music"),
        actions: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppTheme.inkGreyLight,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none, color: AppTheme.secondaryColor),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // playlist by users and editor
            PlaylistByCategorySection(category: "Discover new music", songList: FakeData.songs.take(10).toList(), isFromUser: true,),
            PlaylistByCategorySection(category: "Playlist from our editors", songList: FakeData.songs.take(10).toList(), isFromUser: false,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: MusicByGenreSection(),
            ),
            const SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}