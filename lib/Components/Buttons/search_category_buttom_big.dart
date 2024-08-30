import 'package:flutter/material.dart';
import 'package:music_player/Utils/app_theme.dart';

class SearchCategoryButtonBig extends StatelessWidget {
  final Color primaryColorPurple = const Color(0xff7d4cff);
  final Color secondaryColorPurple = const Color(0xff9487f5);

  final Color primaryColorYellow = const Color(0xffffd338);
  final Color secondaryColorYellow = const Color(0xffffda47);

  final Color primaryColorOrange = const Color(0xffff8c42);
  final Color secondaryColorOrange = const Color(0xffff954b);

  final Color primaryColorRed = AppTheme.primaryColor;
  final Color secondaryColorRed = AppTheme.secondaryColor;

  final String categoryName;

  SearchCategoryButtonBig({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    // Determine the icon and colors based on categoryName
    Map<String, dynamic> getCategoryAttributes(String category) {
      switch (category.toLowerCase()) {
        case 'music':
          return {
            'icon': Icons.music_note,
            'primaryColor': primaryColorPurple,
            'secondaryColor': secondaryColorPurple,
          };
        case 'podcast':
          return {
            'icon': Icons.podcasts,
            'primaryColor': primaryColorOrange,
            'secondaryColor': secondaryColorOrange,
          };
        case 'audio books':
          return {
            'icon': Icons.my_library_books,
            'primaryColor': primaryColorYellow,
            'secondaryColor': secondaryColorYellow,
          };
        case 'for you':
          return {
            'icon': Icons.favorite,
            'primaryColor': primaryColorRed,
            'secondaryColor': secondaryColorRed,
          };
        default:
          return {
            'icon': Icons.music_video,
            'primaryColor': primaryColorPurple,
            'secondaryColor': secondaryColorPurple,
          };
      }
    }

    final attributes = getCategoryAttributes(categoryName);

    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: attributes['primaryColor'],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: attributes['secondaryColor'],
              ),
              child: Icon(
                attributes['icon'],
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: attributes['secondaryColor'],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  categoryName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
