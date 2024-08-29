import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/artist_name_item.dart';
import 'package:music_player/Components/Buttons/main_play_button.dart';
import 'package:music_player/Utils/fake_data.dart';

class MixedPlaylistSmall extends StatelessWidget {
  final Color primaryColor = const Color(0xffcfffea);
  final Color secondaryColor = const Color(0xffb9fade);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SOUND-SPHERE MIX",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                Text(
                  "A playlist that adapts to your tastes",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: double.infinity,
              color: secondaryColor,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(15/360),
                      child: ArtistNameItem(artist: FakeData.artists.elementAt(4)),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(55/360),
                      child: ArtistNameItem(artist: FakeData.artists.elementAt(20), isBlackText: true,),
                    ),
                  ),
                  Positioned(
                    left: 120,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(-15/360),
                      child: ArtistNameItem(artist: FakeData.artists.elementAt(19), isBlackText: true,),
                    ),
                  ),
                  Positioned(
                    right: 50,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(-50/360),
                      child: ArtistNameItem(artist: FakeData.artists.elementAt(6)),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 20,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(5/360),
                      child: ArtistNameItem(artist: FakeData.artists.elementAt(7), isBlackText: true,),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    right: 120,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(15/360),
                      child: ArtistNameItem(artist: FakeData.artists.elementAt(8)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 20,
                    child: MainPlayButton(onPressed: (){print("Mixed playlist tapped");},),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
