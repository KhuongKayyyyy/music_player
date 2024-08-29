import 'package:flutter/material.dart';
import 'package:music_player/Utils/app_theme.dart';
import 'package:music_player/main_wrapper.dart';
import 'Utils/app_theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home:const MainWrapper(),
    );
  }
}