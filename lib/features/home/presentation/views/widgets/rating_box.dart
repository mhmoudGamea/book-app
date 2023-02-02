import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star_rounded, size: 20, color: Color(0xffffdd4f)),
        const SizedBox(width: 5),
        Text('4.8',
            style: Styles.header.copyWith(fontFamily: kNunito, fontSize: 18)),
        const SizedBox(width: 5),
        const Text('(2390)', style: Styles.description),
      ],
    );
  }
}
