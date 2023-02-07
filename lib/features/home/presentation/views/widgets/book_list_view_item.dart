import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_cover.dart';
import 'package:book_app/features/home/presentation/views/widgets/price_box.dart';
import 'package:book_app/features/home/presentation/views/widgets/rating_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import '../book_details_view.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const BookListViewItem({Key? key, required this.bookModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(BookDetailsView.rn, extra: bookModel);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookCover(imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(bookModel.volumeInfo!.title!,
                      style: Styles.header, maxLines: 2),
                  const SizedBox(height: 3),
                  Text(bookModel.volumeInfo!.authors![0],
                      style: Styles.description),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const PriceBox(
                        textColor: Colors.white,
                        price: 'Free',
                      ),
                      RatingBox(
                        rating:
                            bookModel.volumeInfo!.averageRating?.round() ?? 0,
                        count: bookModel.volumeInfo!.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
