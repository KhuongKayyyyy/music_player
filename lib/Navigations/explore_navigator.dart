import 'package:flutter/material.dart';
import 'package:music_player/Views/explore/explore_landing_page.dart';

class ExploreNavigator extends StatefulWidget{
  const ExploreNavigator({super.key});

  @override
  _ExploreNavigatorState createState() => _ExploreNavigatorState();
}
GlobalKey<NavigatorState> exploreNavigatorKey = GlobalKey<NavigatorState>();


class _ExploreNavigatorState extends State<ExploreNavigator>{
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: exploreNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return ExploreLandingPage();
          },
        );
      },
    );
  }
}