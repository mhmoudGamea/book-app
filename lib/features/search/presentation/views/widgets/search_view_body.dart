import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import './custom_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 20),
          CustomTextField(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('Search result', style: Styles.titleMedium),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SearchResultListView(),
          )
        ],
      ),
    );
  }
}
