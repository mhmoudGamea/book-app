import 'package:flutter/material.dart';

import './custom_book_details_app_bar.dart';
import 'custom_book_details_section.dart';
import 'custom_similar_books.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            child: Column(
              children: const [
                SizedBox(height: 5),
                CustomBookDetailsAppBar(),
                CustomBookDetailsSection(),
                Expanded(child: SizedBox(height: 20)),
                CustomSimilarBooks(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
