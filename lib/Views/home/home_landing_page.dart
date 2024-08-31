import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/Artist/added_artist.dart';
import 'package:music_player/Components/Items/Artist/artist_name_item.dart';
import 'package:music_player/Components/Buttons/Playlist/history_playlist.dart';
import 'package:music_player/Components/Buttons/Playlist/mixied_playlist_small.dart';
import 'package:music_player/Components/Items/Song_Track/song_item.dart';
import 'package:music_player/Sections/best_album_section.dart';
import 'package:music_player/Sections/playlist_section.dart';
import 'package:music_player/Sections/song_section.dart';
import 'package:music_player/Utils/app_theme.dart';
import 'package:music_player/Utils/fake_data.dart';
import 'package:music_player/Utils/routes.dart';

class HomeLandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppTheme.primaryColor,
              ),
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.headphones, color: Colors.white)),
            ),
            const Spacer(),
            const Text("Home", style: TextStyle(fontWeight: FontWeight.w500),),
            const Spacer(),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppTheme.inkGreyLight,
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none, color: AppTheme.secondaryColor)),
            )
          ],
        ),
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // mixed playlist section
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AddedArtist(myArtistList: FakeData.artists),
                      const SizedBox(width: 10,),
                      HistoryPlaylist(onPressed: () => Navigator.pushNamed(context, Routes.listeningHistoryPage),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  MixedPlaylistSmall(),
                  const SizedBox(height: 10,),
                ],
              ),
            ),


            //albums and songs section
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  // songs & albums section;
                  SongSection(songSectionTitle: "Today hits", songList: FakeData.songs.take(10).toList(), isExpandable: true,),
                  const SizedBox(height: 10,),
                  SongSection(songSectionTitle: "Son Tung MTP's fan like", songList: FakeData.songs.take(10).toList(), isExpandable: false,),
                  const SizedBox(height: 10,),
                  PlaylistSection(playlistSectionTitle: "Made for you"),
                  const SizedBox(height: 10,),
                  const SizedBox(height: 10,),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BestAlbumSection(),
            ),
            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SongSection(songSectionTitle: "New release for you", songList: FakeData.songs.take(10).toList(), isExpandable: false,),
            ),

            //margin to bottom
            const SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}