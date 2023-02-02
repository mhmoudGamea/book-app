import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Widget widget;
  final BorderRadius borderRadius;
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.widget,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: widget,
      ),
    );
  }
}
