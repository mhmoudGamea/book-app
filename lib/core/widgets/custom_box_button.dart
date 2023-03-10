import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/core/widgets/custom_button.dart';
import 'package:book_app/core/widgets/custom_price_box.dart';
import 'package:flutter/material.dart';

class CustomBoxButton extends StatelessWidget {
  final String previewUrl;
  const CustomBoxButton({super.key, required this.previewUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: CustomPriceBox(
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomButton(
                backgroundColor: const Color(0xffef8262),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                widget: Text(
                  'Preview',
                  style: Styles.titleMedium
                      .copyWith(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                previewUrl: previewUrl),
          ),
        ],
      ),
    );
  }
}
