import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Song_Track/track_item.dart';
import 'package:music_player/Components/SearchBar/custom_search_bar.dart';
import 'package:music_player/Models/song.dart';
import 'package:music_player/Utils/fake_data.dart';
import '../../Utils/app_theme.dart';

class ListeningHistoryPage extends StatelessWidget {
  final List<Song> songList = FakeData.songs.take(10).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listening History"),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            CustomSearchBar(textHint: "What should we listen to?", isWhite: false,),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: songList.length,
                itemBuilder: (context, index) {
                  // Determine whether to set isLiked to true or false based on the index
                  bool isLiked = index % 2 == 0;

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: TrackItem(song: songList[index], isLiked: isLiked),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
