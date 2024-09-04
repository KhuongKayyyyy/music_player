import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Radio/radio_station_schedule_item.dart';
import 'package:music_player/Models/radio_station.dart';
import 'package:music_player/Utils/fake_data.dart';
import 'package:popover/popover.dart';

import '../../Components/PopOutMenu/pop_out_menu.dart';
import '../../Utils/app_theme.dart';

class ExploreRadioSchedule extends StatelessWidget{
  RadioStation radioStation;
  ExploreRadioSchedule({required this.radioStation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" ${radioStation.name}"),
        actions: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppTheme.inkGreyLight,
            ),
            child: IconButton(
              onPressed: () {
                showPopover(
                  context: context,
                  bodyBuilder: (context) => PopOutMenu(),
                  width: 200,
                  height: 110,
                  arrowHeight: 0,
                  arrowWidth: 0,
                  // offset: 10,
                  direction: PopoverDirection.bottom,
                );
              },
              icon: Icon(Icons.notifications_none, color: AppTheme.secondaryColor),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Schedule",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              const SizedBox(height: 20,),
              RadioStationScheduleItem(radioStation: radioStation, imgURL: FakeData().hiphopAlbumCover.first, isLiveNow: true, isEpisodeItem: false,),
              const SizedBox(height: 10,),
              RadioStationScheduleItem(radioStation: FakeData.radioList.elementAt(1), imgURL: FakeData().hiphopAlbumCover.elementAt(1), isLiveNow: false,isEpisodeItem: false),
              const SizedBox(height: 10,),
              RadioStationScheduleItem(radioStation: FakeData.radioList.last, imgURL: FakeData().hiphopAlbumCover.last, isLiveNow: false,isEpisodeItem: false),
              const SizedBox(height: 10,),

              RadioStationScheduleItem(radioStation: radioStation, imgURL: FakeData().popAlbumCover.first, isLiveNow: false,isEpisodeItem: false),
              const SizedBox(height: 10,),
              RadioStationScheduleItem(radioStation: FakeData.radioList.elementAt(1), imgURL: FakeData().popAlbumCover.elementAt(1), isLiveNow: false,isEpisodeItem: false),
              const SizedBox(height: 10,),
              RadioStationScheduleItem(radioStation: FakeData.radioList.last, imgURL: FakeData().popAlbumCover.last, isLiveNow: false,isEpisodeItem: false),
              const SizedBox(height: 10,),

              RadioStationScheduleItem(radioStation: radioStation, imgURL: FakeData().rockAlbumCover.first, isLiveNow: false,isEpisodeItem: false),
              const SizedBox(height: 10,),
              RadioStationScheduleItem(radioStation: FakeData.radioList.elementAt(1), imgURL: FakeData().rockAlbumCover.elementAt(1), isLiveNow: false,isEpisodeItem: false),
              const SizedBox(height: 10,),
              RadioStationScheduleItem(radioStation: FakeData.radioList.last, imgURL: FakeData().rockAlbumCover.last, isLiveNow: false,isEpisodeItem: false),
              const SizedBox(height: 10,),

              RadioStationScheduleItem(radioStation: radioStation, imgURL: FakeData().rbAlbumCover.first, isLiveNow: false,isEpisodeItem: false),
              const SizedBox(height: 10,),
              RadioStationScheduleItem(radioStation: FakeData.radioList.elementAt(1), imgURL: FakeData().rbAlbumCover.elementAt(1), isLiveNow: false,isEpisodeItem: false),
              const SizedBox(height: 10,),
              RadioStationScheduleItem(radioStation: FakeData.radioList.last, imgURL: FakeData().rbAlbumCover.last, isLiveNow: false,isEpisodeItem: false),

            //  margin to bottom
              const SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}