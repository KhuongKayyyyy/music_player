import 'package:flutter/material.dart';

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
            return Container(color: Colors.blueAccent);
          },
        );
      },
    );
  }
}