import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/features/home/presentation/view_models/similar%20book%20cubit/similar_books_cubit.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';

class BookDetailsView extends StatelessWidget {
  static const String rn = '/bookDetailsView';
  final BookModel bookModel;
  const BookDetailsView({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilarBooksCubit(HomeRepoImpl())
        ..getSimilarBooks(bookModel.volumeInfo!.categories![0]),
      child: Scaffold(
        body: SafeArea(
          child: BookDetailsViewBody(bookModel: bookModel),
        ),
      ),
    );
  }
}
