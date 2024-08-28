import 'package:flutter/material.dart';

class LibraryNavigator extends StatefulWidget{
  const LibraryNavigator({super.key});

  @override
  _LibraryNavigatorState createState() => _LibraryNavigatorState();
}

GlobalKey<NavigatorState> libraryNavigatorKey = GlobalKey<NavigatorState>();

class _LibraryNavigatorState extends State<LibraryNavigator>{
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: libraryNavigatorKey,
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context){
            // if(settings.name ==""){
            //   return Container(color: Colors.black,);
            // }
            return Container(color: Colors.yellow,);
          }
        );
      }
    );
  }
}