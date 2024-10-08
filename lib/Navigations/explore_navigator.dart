import 'package:flutter/material.dart';
import 'package:music_player/Utils/routes.dart';
import 'package:music_player/Views/explore/explore_audio_book.dart';
import 'package:music_player/Views/explore/explore_landing_page.dart';
import 'package:music_player/Views/explore/explore_music.dart';
import 'package:music_player/Views/explore/explore_radio.dart';

class ExploreNavigator extends StatefulWidget{
  const ExploreNavigator({super.key});

  @override
  _ExploreNavigatorState createState() => _ExploreNavigatorState();
}
GlobalKey<NavigatorState> _exploreNavigatorKey = GlobalKey<NavigatorState>();


class _ExploreNavigatorState extends State<ExploreNavigator>{
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _exploreNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            if(settings.name ==Routes.exploreMusicPage){
              return ExploreMusic();
            }
            else if(settings.name == Routes.exploreAudioBookPage){
              return ExploreAudioBook();
            }
            else if(settings.name == Routes.exploreRadioPage){
              return ExploreRadio();
            }
            return ExploreLandingPage();
          },
        );
      },
    );
  }
}