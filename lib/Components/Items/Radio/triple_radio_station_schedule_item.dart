import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Radio/radio_station_item_big.dart';
import 'package:music_player/Components/Items/Radio/radio_station_schedule_item.dart';
import 'package:music_player/Utils/fake_data.dart';

class TripleRadioStationScheduleItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RadioStationScheduleItem(radioStation: FakeData.radioList.first, imgURL: FakeData().rockAlbumCover.first, isLiveNow: false, isEpisodeItem: true),
        const SizedBox(height: 10,),
        RadioStationScheduleItem(radioStation: FakeData.radioList.first, imgURL: FakeData().rockAlbumCover.elementAt(1), isLiveNow: false, isEpisodeItem: true),
        const SizedBox(height: 10,),
        RadioStationScheduleItem(radioStation: FakeData.radioList.first, imgURL: FakeData().rockAlbumCover.last, isLiveNow: false, isEpisodeItem: true),
        const SizedBox(height: 10,),
      ],
    );
  }
}