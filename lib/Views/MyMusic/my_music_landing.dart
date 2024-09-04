import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/search_category_button_small.dart';
import 'package:music_player/Sections/Playlist/playlist_by_album_section.dart';
import 'package:music_player/Sections/Playlist/playlist_by_artist_section.dart';
import 'package:music_player/Models/song.dart';
import 'package:music_player/Sections/Playlist/my_playlist_section.dart';
import '../../Components/Items/Song_Track/track_item.dart';
import '../../Utils/app_theme.dart';
import '../../Utils/fake_data.dart';

class MyMusicLanding extends StatefulWidget {
  @override
  _MyMusicLandingState createState() => _MyMusicLandingState();
}

class _MyMusicLandingState extends State<MyMusicLanding> {
  List<Song> songList = FakeData.songs.take(10).toList();
  int selectedIndex = 0;

  Widget currentPlaylist() {
    switch (selectedIndex) {
      case 0:
        return MyPlaylistSection();
      case 1:
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: songList.length,
          itemBuilder: (context, index) {
            bool isLiked = index % 2 == 0;

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: TrackItem(song: songList[index], isLiked: isLiked),
            );
          },
        );
      case 2:
        return PlaylistByAlbumSection();
      case 3:
        return PlaylistByArtistSection();
      default:
        return MyPlaylistSection();
    }
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.headphones, color: Colors.white)),
            ),
            const Spacer(),
            const Text(
              "My Music",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppTheme.inkGreyLight,
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none,
                      color: AppTheme.secondaryColor)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SearchCategoryButtonSmall(
                    buttonText: "Playlists",
                    isSelected: selectedIndex == 0,
                    onPressed: () => onButtonPressed(0),
                  ),
                  SizedBox(width: 10),
                  SearchCategoryButtonSmall(
                    buttonText: "Track",
                    isSelected: selectedIndex == 1,
                    onPressed: () => onButtonPressed(1),
                  ),
                  SizedBox(width: 10),
                  SearchCategoryButtonSmall(
                    buttonText: "Albums",
                    isSelected: selectedIndex == 2,
                    onPressed: () => onButtonPressed(2),
                  ),
                  SizedBox(width: 10),
                  SearchCategoryButtonSmall(
                    buttonText: "Artists",
                    isSelected: selectedIndex == 3,
                    onPressed: () => onButtonPressed(3),
                  ),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 20),
              currentPlaylist(),
            ],
          ),
        ),
      ),
    );
  }
}
