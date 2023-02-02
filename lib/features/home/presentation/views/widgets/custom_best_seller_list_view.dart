import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      separatorBuilder: (context, index) => const SizedBox(height: 6),
      itemBuilder: (context, index) => const BestSellerListViewItem(),
    );
  }
}
