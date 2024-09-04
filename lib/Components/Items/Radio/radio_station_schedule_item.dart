import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Components/PopOutMenu/pop_out_menu.dart';
import 'package:music_player/Models/radio_station.dart';
import 'package:music_player/Utils/app_theme.dart';
import 'package:popover/popover.dart';

class RadioStationScheduleItem extends StatelessWidget {
  final RadioStation radioStation;
  final String imgURL;
  final bool isLiveNow;
  final bool isEpisodeItem;

  RadioStationScheduleItem({
    required this.radioStation,
    required this.imgURL,
    required this.isLiveNow,
    required this.isEpisodeItem,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isEpisodeItem ? 330 : double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: imgURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if(!isEpisodeItem)
                            Text(
                              isLiveNow ? "Live · 7 - 9 AM" : "7 - 9 AM",
                              style: TextStyle(
                                color: isLiveNow ? Colors.red : Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          Text(
                            radioStation.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            radioStation.description,
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showPopover(
                          barrierColor: Colors.transparent,
                          context: context,
                          bodyBuilder: (context) => PopOutMenu(),
                          width: 200,
                          height: 110,
                          arrowHeight: 0,
                          arrowWidth: 0,
                        );
                      },
                      icon: Icon(
                        Icons.more_horiz_rounded,
                        color: AppTheme.inkGreyDark,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.grey,
                ),  // Divider placed here under the text and icon button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
