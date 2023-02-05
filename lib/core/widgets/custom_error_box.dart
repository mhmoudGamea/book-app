import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorBox extends StatelessWidget {
  final String errorMessage;
  const CustomErrorBox({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 220, 116, 116),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(
          children: [
            Text(
              errorMessage,
              style: Styles.description.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
