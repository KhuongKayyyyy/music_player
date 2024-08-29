import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/artist_item.dart';
import 'package:music_player/Models/artist.dart';
import 'package:music_player/Utils/app_theme.dart';

class AddedArtist extends StatelessWidget {
  final List<Artist> myArtistList;
  final List<Artist> displayArtist;

  AddedArtist({super.key, required this.myArtistList})
      : displayArtist = myArtistList.take(3).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppTheme.secondaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            "Recently Added",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ArtistItem(artist: displayArtist.elementAt(0), size: 50,),
                        const SizedBox(width: 20),
                        ArtistItem(artist: displayArtist.elementAt(1), size: 50),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 60,
                    child: ArtistItem(artist: displayArtist.elementAt(2),size: 60),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          InkWell(
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppTheme.primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text("Add more",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
