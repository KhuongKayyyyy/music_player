import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Radio/triple_radio_station_schedule_item.dart';
import 'package:music_player/Models/radio_station.dart';
import 'package:music_player/Utils/fake_data.dart';
import '../../Components/Items/Radio/radio_station_schedule_item.dart';

class RadioStationNewEpisode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "New Episodes",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 370,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8.0),
            itemCount: FakeData.radioList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:const EdgeInsets.only(right: 20),
                child:  TripleRadioStationScheduleItem(),
              );
            },
          ),
        ),
      ],
    );
  }
}
