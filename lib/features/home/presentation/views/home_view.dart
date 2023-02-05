import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/features/home/presentation/view_models/Cover%20Book%20cubit/cover_books_cubit.dart';
import 'package:book_app/features/home/presentation/view_models/newest%20book%20cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  static const String rn = '/homeView';
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                CoverBooksCubit(HomeRepoImpl())..getCoverBook()),
        BlocProvider(create: (context) => NewestBookCubit(HomeRepoImpl()))
      ],
      child: const Scaffold(
        body: SafeArea(child: HomeViewBody()),
      ),
    );
  }
}
