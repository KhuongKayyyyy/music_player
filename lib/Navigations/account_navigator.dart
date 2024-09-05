import 'package:flutter/material.dart';
import 'package:music_player/Views/Account/account_edit_information.dart';
import 'package:music_player/Views/Account/account_landing.dart';
import 'package:music_player/Views/Account/account_manage_storage.dart';
import 'package:music_player/Views/Account/account_payment.dart';
import 'package:music_player/main_wrapper.dart';

import '../Utils/routes.dart';
final GlobalKey<NavigatorState> _accountNavigatorKey = GlobalKey<NavigatorState>();

class AccountNavigator extends StatefulWidget {
  final Function(bool) onBottomNavVisibilityChanged;

  const AccountNavigator({super.key, required this.onBottomNavVisibilityChanged});

  @override
  _AccountNavigatorState createState() => _AccountNavigatorState();
}

class _AccountNavigatorState extends State<AccountNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _accountNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        // if (settings.name == Routes.accountManageStorage) {
        //   widget.onBottomNavVisibilityChanged(false); // Hide bottom nav
        // }else{
        //   widget.onBottomNavVisibilityChanged(true); // Hide bottom nav
        // }

        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            if (settings.name == Routes.accountManageStorage) {
              return AccountManageStorage();
            } else if (settings.name == Routes.accountEditInformation) {
              return AccountEditInformation();
            }else if (settings.name == Routes.accountManagePayment){
              return AccountPayment();
            }
            return const AccountLanding();
          },
        );
      },
    );
  }
}
