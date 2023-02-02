import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemCount: 6,
      separatorBuilder: (context, index) => const SizedBox(height: 6),
      itemBuilder: (context, index) => const BookListViewItem(),
    );
  }
}
