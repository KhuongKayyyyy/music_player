import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Models/book.dart';

class BookItem extends StatelessWidget{
  Book book;
  BookItem({required this.book});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              imageUrl: book.imgURL,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          book.bookName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          book.bookAuthor,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey
          ),
        )
      ],
    );
  }
}