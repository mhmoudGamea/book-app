import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_box_button.dart';
import 'book_cover.dart';
import 'rating_box.dart';

class CustomBookDetailsSection extends StatelessWidget {
  final BookModel bookModel;
  const CustomBookDetailsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.28),
          child:
              BookCover(imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!),
        ),
        const SizedBox(height: 30),
        Text(bookModel.volumeInfo!.title!, style: Styles.header, maxLines: 2),
        const SizedBox(height: 3),
        Text(bookModel.volumeInfo!.authors![0], style: Styles.description),
        const SizedBox(height: 3),
        if (bookModel.volumeInfo!.ratingsCount != null)
          RatingBox(
            rating: bookModel.volumeInfo!.averageRating ?? 0,
            count: bookModel.volumeInfo!.ratingsCount ?? 0,
          ),
        const SizedBox(height: 30),
        const CustomBoxButton(),
      ],
    );
  }
}
