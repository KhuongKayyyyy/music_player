import 'package:flutter/material.dart';
import 'package:music_player/Utils/routes.dart';
import 'package:music_player/Views/home/home_landing_page.dart';
import 'package:music_player/Views/home/listening_history_page.dart';

class HomeNavigator extends StatefulWidget {
  const HomeNavigator({super.key});

  @override
  _HomeNavigatorState createState() => _HomeNavigatorState();
}

final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();

class _HomeNavigatorState extends State<HomeNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _homeNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) {
            if (settings.name == Routes.listeningHistoryPage) {
              return ListeningHistoryPage();
            }
            return HomeLandingPage();
          },
        );
      },
    );
  }
}
