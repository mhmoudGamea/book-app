import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import './custom_app_bar.dart';
import 'custom_list_view_home_cover.dart';
import 'custom_newest_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 5),
              CustomAppBar(),
              SizedBox(height: 15),
              CustomListViewHomeCover(fraction: 0.25),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Newest Books', style: Styles.titleMedium),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: CustomNewestBookListView(),
        ),
      ],
    );
  }
}
