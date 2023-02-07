import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class PriceBox extends StatelessWidget {
  final Color textColor;
  final String price;
  const PriceBox({super.key, required this.textColor, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          price,
          style: Styles.titleMedium
              .copyWith(fontWeight: FontWeight.w900, color: textColor),
        ),
        const SizedBox(width: 5),
        Icon(FontAwesomeIcons.euroSign, size: 17, color: textColor),
      ],
    );
  }
}
