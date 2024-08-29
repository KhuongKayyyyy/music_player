import 'package:flutter/material.dart';
import 'package:music_player/Views/home/home_landing.dart';

class HomeNavigator extends StatefulWidget{
  const HomeNavigator({super.key});

  @override
  _HomeNavigator createState() => _HomeNavigator();
}

GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();

class _HomeNavigator extends State<HomeNavigator>{
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _homeNavigatorKey,
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context){
            if(settings.name ==""){
              return Container(color: Colors.black,);
            }
            return HomeLanding();
          }
        );
      },
    );
  }
}