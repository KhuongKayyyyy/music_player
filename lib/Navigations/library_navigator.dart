import 'package:flutter/material.dart';
import 'package:music_player/Views/MyMusic/my_music_landing.dart';

class LibraryNavigator extends StatefulWidget {
  const LibraryNavigator({super.key});

  @override
  _LibraryNavigatorState createState() => _LibraryNavigatorState();
}

final GlobalKey<NavigatorState> _libraryNavigatorKey = GlobalKey<NavigatorState>();

class _LibraryNavigatorState extends State<LibraryNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _libraryNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return MyMusicLanding();
          },
        );
      },
    );
  }
}
