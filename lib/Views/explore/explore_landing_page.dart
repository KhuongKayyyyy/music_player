import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/search_category_button_big.dart';
import 'package:music_player/Components/Buttons/search_category_button_small.dart';
import 'package:music_player/Components/SearchBar/custom_search_bar.dart';
import 'package:music_player/Sections/popular_track_list_section.dart';
import 'package:music_player/Utils/fake_data.dart';
import 'package:music_player/Utils/routes.dart';

import '../../Utils/app_theme.dart';

class ExploreLandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppTheme.primaryColor,
              ),
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.headphones, color: Colors.white)),
            ),
            const Spacer(),
            const Text("Explore", style: TextStyle(fontWeight: FontWeight.w500),),
            const Spacer(),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppTheme.inkGreyLight,
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none, color: AppTheme.secondaryColor)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchBar(textHint: "What should we listen to ?"),
              const SizedBox(height: 10,),

              //search by category small
              const Row(
                children: [
                  SearchCategoryButtonSmall(buttonText: "Artist"),
                  SizedBox(width: 10,),
                  SearchCategoryButtonSmall(buttonText: "Music 2024"),
                  SizedBox(width: 10,),
                  SearchCategoryButtonSmall(buttonText: "Playlist"),
                  SizedBox(width: 10,),
                  SearchCategoryButtonSmall(buttonText: "Trending")
                ],
              ),
              const SizedBox(height: 10,),

            //  search by category big
              Row(
                children: [
                  Flexible(
                    flex: 4,
                    child: SearchCategoryButtonBig(categoryName: "Music",onPressed: () =>Navigator.pushNamed(context, Routes.exploreMusicPage),),
                  ),
                  const SizedBox(width: 10,),
                  Flexible(
                    flex: 6,
                    child: SearchCategoryButtonBig(categoryName: "Podcast",),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Flexible(
                    flex: 6,
                    child: SearchCategoryButtonBig(categoryName: "Audio Books",),
                  ),
                  const SizedBox(width: 10,),
                  Flexible(
                    flex: 4,
                    child: SearchCategoryButtonBig(categoryName: "For you",),
                  )
                ],
              ),
              const SizedBox(height: 20,),

              //  popular track list
              SizedBox(
                height: 790,
                child: PopularTrackListSection(popularSongList: FakeData.songs.take(10).toList()),
              ),


              const SizedBox(height: 100,),
            ],
          ),
        )
      ),
    );
  }
}