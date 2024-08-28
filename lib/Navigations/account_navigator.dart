import 'package:flutter/material.dart';

class AccountNavigator extends StatefulWidget{
  const AccountNavigator({super.key});

  @override
  _AccountNavigatorState createState() => _AccountNavigatorState();
}

GlobalKey<NavigatorState> accountNavigatorKey = GlobalKey<NavigatorState>();

class _AccountNavigatorState extends State<AccountNavigator>{
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: accountNavigatorKey,
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context){
            // if(settings.name ==""){
            //   return Container(color: Colors.black,);
            // }
            return Container(color: Colors.grey,);
          }
        );
      },
    );
  }
}