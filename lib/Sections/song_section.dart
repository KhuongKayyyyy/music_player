import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/song_item.dart';
import 'package:music_player/Models/song.dart';

class SongSection extends StatelessWidget{
  String songSectionTitle;
  List<Song> songList;
  bool isExpandable;
  final VoidCallback? onPressed;
  SongSection({super.key, required this.songSectionTitle,required this.songList,required this.isExpandable, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              songSectionTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
            const Spacer(),
            if(isExpandable)
              IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.arrow_forward_ios_rounded),
              )
          ],
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: songList.length,
            itemBuilder: (context, index){
              Song song = songList.elementAt(index);
              return Padding(
                padding:const EdgeInsets.only(right: 10),
                child: SongItem(song: song),
              );
            },
          ),
        )
      ],
    );
  }
}