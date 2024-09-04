import 'package:flutter/material.dart';
import 'package:music_player/Utils/app_theme.dart';

class CustomSearchBar extends StatelessWidget {
  String textHint;
  bool isWhite;
  CustomSearchBar({required this.textHint, required this.isWhite});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showSearch(
          context: context,
          delegate: CustomSearchDelegate(),
        );
      },
      child:Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color:isWhite ? Colors.white : Colors.grey[100], // Background color of the search bar
          borderRadius: BorderRadius.circular(15), // Rounded corners
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search, // Search icon at the beginning
              color: Colors.grey,
            ),
            const SizedBox(width: 8), // Space between icon and text
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: textHint,
                  hintStyle: TextStyle(
                    color: AppTheme.inkGrey, // Text color
                  ),
                  border: InputBorder.none, // Remove underline border
                ),
                style: const TextStyle(
                  color: Colors.black, // Text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate{
  List<String> searchArist = [
    "Apple"
    "Banana",
    "Pear",
    "Watermelon",
    "Oranges",
    "Strawberries"
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      icon: const Icon(Icons.clear,color: Colors.black,),
      onPressed: () {
        query = '';
      }
    );
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var fruit in searchArist){
      if (fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, int index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for(var fruit in searchArist){
      if (fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, int index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
