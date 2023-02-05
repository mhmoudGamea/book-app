import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          errorMessage,
          style: Styles.description.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
/*

Row(
          children: [
            const Icon(
              FontAwesomeIcons.squareXmark,
              size: 20,
              color: Colors.red,
            ),
            Text(
              errorMessage,
              style: Styles.description.copyWith(color: Colors.black),
            )
          ],
        )
*/