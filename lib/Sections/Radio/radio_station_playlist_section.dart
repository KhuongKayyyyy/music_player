import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Radio/radio_station_item_small.dart';
import 'package:music_player/Utils/fake_data.dart';

class RadioStationPlaylistSection extends StatelessWidget{
  String playListName;
  RadioStationPlaylistSection({required this.playListName});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child:  Text(
            playListName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 10,),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: FakeData.radioList.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RadioStationItemSmall(radioStation: FakeData.radioList.elementAt(index), withLabel: true,),
              );
            },
          ),
        ),
      ],
    );
  }
}