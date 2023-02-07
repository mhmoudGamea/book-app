import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class RatingBox extends StatelessWidget {
  final int rating;
  final int count;
  const RatingBox({super.key, required this.rating, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star_rounded, size: 20, color: Color(0xffffdd4f)),
        const SizedBox(width: 5),
        Text(rating.toString(),
            style: Styles.header.copyWith(fontFamily: kNunito, fontSize: 18)),
        const SizedBox(width: 5),
        Text('($count)', style: Styles.description),
      ],
    );
  }
}
