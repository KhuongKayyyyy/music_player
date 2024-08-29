import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Utils/app_theme.dart';

import '../../Models/song.dart';

class TrackItem extends StatelessWidget{
  Song song;
  TrackItem({required this.song});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100]!
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            SizedBox(
              height: 80,
              width: 80,
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
                const Spacer(),
                Text(
                  song.title,
                  style:const TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 5,),
                Text(
                  song.artistName,
                  style: TextStyle(
                    color: AppTheme.inkGreyDark
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.add),color: Colors.grey,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz_rounded),color: Colors.grey,),
          ],
        ),
      )
    );
  }
}