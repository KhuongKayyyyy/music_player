import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Models/radio_station.dart';
import 'package:music_player/Utils/app_theme.dart';

class RadioStationItemSmall extends StatelessWidget{
  final bool withLabel;
  RadioStation radioStation;
  RadioStationItemSmall({required this.radioStation, required this.withLabel});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: radioStation.imgURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                " ${radioStation.name}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                radioStation.description,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600
                ),
                overflow: TextOverflow.ellipsis,
              ),

            ],
          ),
        ),
        if(withLabel)
          Positioned(
            left: 15,
            bottom: 50,
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: " Music ", // Text before "Station"
                    style: TextStyle(
                      color: Colors.white, // Color for " Music"
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Station", // Only "Station" text
                    style: TextStyle(
                      color: AppTheme.primaryColor, // Color for "Station"
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}