import 'package:book_app/core/widgets/custom_box_button.dart';
import 'package:book_app/features/home/presentation/views/widgets/rating_box.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import './custom_book_details_app_bar.dart';
import './book_cover.dart';
import 'custom_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      child: Column(
        children: [
          const SizedBox(height: 5),
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.25),
            child: const BookCover(),
          ),
          const SizedBox(height: 30),
          const Text('The Jungle Book', style: Styles.header, maxLines: 2),
          const SizedBox(height: 3),
          const Text('Rudyard Kipling', style: Styles.description),
          const SizedBox(height: 3),
          const RatingBox(),
          const SizedBox(height: 30),
          const CustomBoxButton(),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.titleMedium
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 17),
            ),
          ),
          const SizedBox(height: 10),
          const CustomListView(fraction: 0.15),
        ],
      ),
    );
  }
}
