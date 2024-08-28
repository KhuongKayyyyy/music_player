import 'package:flutter/material.dart';
import 'package:music_player/Navigations/account_navigator.dart';
import 'package:music_player/Navigations/explore_navigator.dart';
import 'package:music_player/Navigations/home_navigator.dart';
import 'package:music_player/Navigations/library_navigator.dart';

class MainWrapper extends StatefulWidget{
  const MainWrapper({super.key});

  @override
  _MainWrapperState createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper>{
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index){
          setState(() {
            _selectedIndex = index;
          });
      },
        selectedIndex: _selectedIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.music_note_outlined),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            label: "",
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeNavigator(),
          const ExploreNavigator(),
          const LibraryNavigator(),
          const AccountNavigator(),
        ],
      ),
    );
  }
}