import 'package:flutter/material.dart';
import 'package:music_player/Navigations/account_navigator.dart';
import 'package:music_player/Navigations/explore_navigator.dart';
import 'package:music_player/Navigations/home_navigator.dart';
import 'package:music_player/Navigations/library_navigator.dart';
import 'package:music_player/Utils/app_theme.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  _MainWrapperState createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;
  bool isBottomNavVisible = true;

  // Callback to control the visibility of the bottom navigation bar
  void _handleBottomNavVisibility(bool isVisible) {
    setState(() {
      isBottomNavVisible = isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: isBottomNavVisible ? Container(
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 20),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.transparent,
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(color: Colors.transparent),
              ),
            ),
            child: NavigationBar(
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              selectedIndex: _selectedIndex,
              destinations: [
                NavigationDestination(
                  icon: Icon(
                    _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                    color: _selectedIndex == 0 ? AppTheme.primaryColor : Colors.black,
                    size: 35,
                  ),
                  label: "",
                ),
                NavigationDestination(
                  icon: Icon(
                    _selectedIndex == 1 ? Icons.search : Icons.search_outlined,
                    color: _selectedIndex == 1 ? AppTheme.primaryColor : Colors.black,
                    size: 35,
                  ),
                  label: "",
                ),
                NavigationDestination(
                  icon: Icon(
                    _selectedIndex == 2 ? Icons.music_note : Icons.music_note_outlined,
                    color: _selectedIndex == 2 ? AppTheme.primaryColor : Colors.black,
                    size: 35,
                  ),
                  label: "",
                ),
                NavigationDestination(
                  icon: Icon(
                    _selectedIndex == 3 ? Icons.person : Icons.person_outline,
                    color: _selectedIndex == 3 ? AppTheme.primaryColor : Colors.black,
                    size: 35,
                  ),
                  label: "",
                ),
              ],
            ),
          ),
        ),
      ) : null,
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          const HomeNavigator(),
          const ExploreNavigator(),
          const LibraryNavigator(),
          AccountNavigator(
            onBottomNavVisibilityChanged: _handleBottomNavVisibility,
          ),
        ],
      ),
    );
  }
}

