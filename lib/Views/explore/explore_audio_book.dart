import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/Books/book_search_by_category.dart';
import 'package:music_player/Components/SearchBar/custom_search_bar.dart';
import 'package:music_player/Sections/Book/book_by_category_section.dart';
import 'package:music_player/Sections/Book/new_books_section.dart';
import '../../Utils/app_theme.dart';

class ExploreAudioBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: const Text("Audio Book"),
        actions: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppTheme.inkGreyLight,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none, color: AppTheme.secondaryColor),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            children: [
            //  search bar
              Padding(
                padding:const EdgeInsets.all(10),
                child: CustomSearchBar(textHint: "What should we listen to ?", isWhite: true,),
              ),
              //new book sections
              Padding(
                padding: const EdgeInsets.only(
                    left: 10,
                  bottom: 20,
                ),
                child: NewBooksSection(),
              ),

            //  search book by category
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  bottom: 10
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BookSearchByCategory(category: "Mystery", onPressed: (){}, isSelected: true,),
                      const SizedBox(width: 10,),
                      BookSearchByCategory(category: "Sci-fi", onPressed: (){}, isSelected: false,),
                      const SizedBox(width: 10,),
                      BookSearchByCategory(category: "Biography", onPressed: (){}, isSelected: false,),
                      const SizedBox(width: 10,),
                      BookSearchByCategory(category: "History", onPressed: (){}, isSelected: false,),
                      const SizedBox(width: 10,),
                      BookSearchByCategory(category: "Business", onPressed: (){}, isSelected: false,),
                      const SizedBox(width: 10,),
                      BookSearchByCategory(category: "Self-help", onPressed: (){}, isSelected: false,),
                    ],
                  ),
                )
              ),
              BookByCategorySection(category: 'Mystery',),
            ],
          ),
        ),
      ),
    );
  }
}
