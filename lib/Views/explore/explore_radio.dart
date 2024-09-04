import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Radio/radio_station_item_big.dart';
import 'package:music_player/Sections/Radio/radio_station_new_episode.dart';
import 'package:music_player/Sections/Radio/radio_station_playlist_section.dart';
import 'package:music_player/Utils/fake_data.dart';

import '../../Utils/app_theme.dart';

class ExploreRadio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio"),
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
      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //popular radio station
            Padding(
              padding: const EdgeInsets.all(10),
              child: RadionStationItem(radioStation: FakeData.radioList.first),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: RadionStationItem(radioStation: FakeData.radioList.elementAt(1)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: RadionStationItem(radioStation: FakeData.radioList.last),
            ),
            const SizedBox(height: 20,),

            //radio station playlist

            RadioStationPlaylistSection(playListName: 'Recently Played'),
            RadioStationNewEpisode(),
            RadioStationPlaylistSection(playListName: 'Our Radio Host'),
            RadioStationPlaylistSection(playListName: 'Hosted By Artist'),
            RadioStationPlaylistSection(playListName: 'Discover New Shows'),
            RadioStationPlaylistSection(playListName: 'Artist Interviews'),
            RadioStationPlaylistSection(playListName: 'Apple Music 1'),
            RadioStationPlaylistSection(playListName: 'Apple Music Hits'),
            RadioStationPlaylistSection(playListName: 'Apple Music Country'),
            RadioStationPlaylistSection(playListName: 'Playlist show'),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                ],
              ),
            ),
            const SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}