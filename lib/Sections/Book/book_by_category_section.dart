import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/Books/audio_book_with_play_button.dart';
import 'package:music_player/Utils/fake_data.dart';

class BookByCategorySection extends StatelessWidget{
  String category;
  BookByCategorySection({required this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: FakeData.books.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding:const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: AudioBookWithPlayButton(book: FakeData.books.elementAt(index)),
                  );
                },
              ),
            )
          ],
        ),
      )
    );
  }
}