import 'package:book_app/features/home/presentation/views/widgets/custom_web_view.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Widget widget;
  final BorderRadius borderRadius;
  final String previewUrl;
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.widget,
      required this.borderRadius,
      required this.previewUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CustomWebView(
                url: previewUrl,
              ),
            ),
          );
        },
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
