import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Models/radio_station.dart';
import 'package:music_player/Utils/app_theme.dart';
import 'package:music_player/Views/explore/explore_radio_schedule.dart';
class RadionStationItem extends StatelessWidget{
  RadioStation radioStation;
  final Color primaryColor = const Color(0xffe1dedb);
  RadionStationItem({super.key, required this.radioStation});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " ${radioStation.name}",
                  style:const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),
                ),
                Text(
                    radioStation.briefInformation,
                  style:const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 18
                  ),
                )
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExploreRadioSchedule(radioStation: radioStation)),
                );
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Icon(Icons.calendar_month_outlined,color: AppTheme.primaryColor,),
              ),
            )
          ],
        ),
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: radioStation.imgURL,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                    ),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "LIVE · ${radioStation.getTimeRange()}",
                                style: TextStyle(
                                  color: AppTheme.inkGreyLight,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                radioStation.title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),
                              ),
                              Text(
                                radioStation.description,
                                style: TextStyle(
                                  color: AppTheme.inkGreyLight,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 3, // Limits the text to 2 lines
                                overflow: TextOverflow.ellipsis, // Adds an ellipsis if the text exceeds 2 lines
                              )
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppTheme.inkGrey
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.black.withOpacity(0.6),
                                size: 50,),
                              padding: EdgeInsets.zero,),
                          ),
                        )
                      ],
                    ),
                  )
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}