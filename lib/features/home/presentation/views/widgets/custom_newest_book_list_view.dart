import 'package:book_app/core/widgets/custom_circle_indicator.dart';
import 'package:book_app/core/widgets/custom_error_box.dart';
import 'package:book_app/features/home/presentation/view_models/newest%20book%20cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_list_view_item.dart';

class CustomNewestBookListView extends StatelessWidget {
  const CustomNewestBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.bookList.length,
            separatorBuilder: (context, index) => const SizedBox(height: 6),
            itemBuilder: (context, index) =>
                BookListViewItem(bookModel: state.bookList[index]),
          );
        } else if (state is NewestBookError) {
          return CustomErrorBox(errorMessage: state.errorMessage);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
