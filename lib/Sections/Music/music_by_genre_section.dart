import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/music_by_genre.dart';
import 'package:music_player/Utils/fake_data.dart';

class MusicByGenreSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Browse all", style: TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        Row(
          children: [
            Flexible(
              flex: 5,
              child: MusicByGenre(genres: FakeData().genres.first, onPressed: (){}),
            ),
            const SizedBox(width: 10,),
            Flexible(
              flex: 5,
              child: MusicByGenre(genres: FakeData().genres.elementAt(1), onPressed: (){}),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Flexible(
              flex: 5,
              child: MusicByGenre(genres: FakeData().genres.elementAt(2), onPressed: (){}),
            ),
            const SizedBox(width: 10,),
            Flexible(
              flex: 5,
              child: MusicByGenre(genres: FakeData().genres.last, onPressed: (){}),
            )
          ],
        )
      ],
    );
  }
}