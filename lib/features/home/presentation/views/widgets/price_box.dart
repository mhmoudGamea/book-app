import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class PriceBox extends StatelessWidget {
  final Color textColor;
  final String price;
  const PriceBox({super.key, required this.textColor, required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: Styles.titleMedium
          .copyWith(fontWeight: FontWeight.w900, color: textColor),
    );
  }
}
