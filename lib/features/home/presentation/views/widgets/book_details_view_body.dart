import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import './custom_book_details_app_bar.dart';
import 'custom_book_details_section.dart';
import 'custom_similar_books.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 5),
                const CustomBookDetailsAppBar(),
                CustomBookDetailsSection(bookModel: bookModel),
                const Expanded(child: SizedBox(height: 20)),
                const CustomSimilarBooks(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
