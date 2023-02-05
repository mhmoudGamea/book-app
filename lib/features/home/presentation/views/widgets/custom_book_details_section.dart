import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_box_button.dart';
import 'book_cover.dart';
import 'rating_box.dart';

class CustomBookDetailsSection extends StatelessWidget {
  const CustomBookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.25),
            child: null //const BookCover(),
            ),
        const SizedBox(height: 30),
        const Text('The Jungle Book', style: Styles.header, maxLines: 2),
        const SizedBox(height: 3),
        const Text('Rudyard Kipling', style: Styles.description),
        const SizedBox(height: 3),
        const RatingBox(),
        const SizedBox(height: 30),
        const CustomBoxButton(),
      ],
    );
  }
}
