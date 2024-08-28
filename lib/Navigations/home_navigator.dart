import 'package:flutter/material.dart';

class HomeNavigator extends StatefulWidget{
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
            return Container(color: Colors.pink,);
          }
        );
      },
    );
  }
}