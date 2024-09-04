import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Models/song.dart';

class SongSearchItem extends StatelessWidget{
  Song song;
  SongSearchItem({required this.song});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: song.imgURL,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(song.title, style:const TextStyle(fontWeight: FontWeight.w600),),
            Text(song.artistName, style:const TextStyle(fontWeight: FontWeight.w600),),
          ],
        ),
        const Spacer(),
        IconButton(onPressed: (){}, icon:const Icon(Icons.clear, color: Colors.grey,)),
      ],
    );
  }
}