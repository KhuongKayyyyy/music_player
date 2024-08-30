import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/track_with_play_button.dart';

import '../Models/song.dart';

class PopularTrackListSection extends StatelessWidget{
  List<Song> popularSongList;
  PopularTrackListSection({required this.popularSongList});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Popular queries", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        const SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: popularSongList.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    TrackWithPlayButton(song: popularSongList.elementAt(index)),
                    Divider(color: Colors.grey[300],),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}