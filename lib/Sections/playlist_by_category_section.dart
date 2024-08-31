import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/playlist_by_editor.dart';
import 'package:music_player/Components/Items/playlist_by_user.dart';

import '../Models/song.dart';

class PlaylistByCategorySection extends StatelessWidget{
  final String category;
  final bool isFromUser;
  List<Song> songList;
  PlaylistByCategorySection({super.key, required this.category, required this.songList, required this.isFromUser});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(category, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        const SizedBox(height: 10,),
        if(isFromUser)
          SizedBox(
          height: 255,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: songList.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(
                    right: 10,
                    bottom: 10
                ),
                child: PlaylistByUser(song: songList.elementAt(index)),
              );
            },
          ),
        ),
        if(!isFromUser)
          SizedBox(
            height: isFromUser ? 255 : 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songList.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(
                      right: 10,
                      bottom: 10
                  ),
                  child: PlaylistByEditor(song: songList.elementAt(index)),
                );
              },
            ),
          )
      ],
    );
  }
}