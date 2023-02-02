import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({super.key});

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
            child: Image.asset(
              'assets/images/snipp.png',
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
