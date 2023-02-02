import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_list_view.dart';

class CustomSimilarBooks extends StatelessWidget {
  const CustomSimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const SizedBox(height: 20),
      ],
    );
  }
}
