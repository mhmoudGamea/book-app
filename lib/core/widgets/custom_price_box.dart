import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomPriceBox extends StatelessWidget {
  final Color backgroundColor;
  final BorderRadius borderRadius;
  const CustomPriceBox({
    super.key,
    required this.backgroundColor,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Text(
        'Free',
        style: Styles.titleMedium.copyWith(
            fontWeight: FontWeight.w700, fontSize: 18, color: Colors.black),
      ),
    );
  }
}
