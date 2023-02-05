import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  final String imageUrl;
  const BookCover({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          //color: const Color(0xfff9250a),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
//items[0].volumeInfo.imageLinks