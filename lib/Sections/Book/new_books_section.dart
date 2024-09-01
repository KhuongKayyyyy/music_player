import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/Books/book_item.dart';
import 'package:music_player/Utils/fake_data.dart';

class NewBooksSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        color: Colors.white
      ),
      child: Padding(
        padding:const  EdgeInsets.only(
          top: 10,
          left: 10,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "New and trending releases",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: FakeData.books.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding:const EdgeInsets.only(
                        right: 10,
                        bottom: 10
                    ),
                    child: BookItem(book: FakeData.books.elementAt(index)),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}