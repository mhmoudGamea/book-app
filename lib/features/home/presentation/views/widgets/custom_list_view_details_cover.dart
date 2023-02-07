import 'package:book_app/features/home/presentation/view_models/similar%20book%20cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_circle_indicator.dart';
import '../../../../../core/widgets/custom_error_box.dart';
import '../../view_models/Cover Book cubit/cover_books_cubit.dart';
import 'book_cover.dart';

class CustomListViewDetailsCover extends StatelessWidget {
  final double fraction;
  const CustomListViewDetailsCover({super.key, required this.fraction});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * fraction,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.bookList.length,
              separatorBuilder: (context, index) => const SizedBox(width: 6),
              itemBuilder: (context, index) => BookCover(
                  imageUrl:
                      state.bookList[index].volumeInfo!.imageLinks!.thumbnail!),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorBox(errorMessage: state.errorMessage);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
