import 'package:book_app/core/widgets/custom_circle_indicator.dart';
import 'package:book_app/core/widgets/custom_error_box.dart';
import 'package:book_app/features/home/presentation/view_models/Cover%20Book%20cubit/cover_books_cubit.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_cover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListView extends StatelessWidget {
  final double fraction;
  const CustomListView({Key? key, required this.fraction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoverBooksCubit, CoverBooksState>(
      builder: (context, state) {
        if (state is CoverBooksSuccess) {
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
        } else if (state is CoverBooksError) {
          return CustomErrorBox(errorMessage: state.errorMessage);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
