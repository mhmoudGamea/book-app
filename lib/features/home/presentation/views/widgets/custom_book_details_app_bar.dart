import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: const EdgeInsets.only(bottom: 15, right: 2),
          constraints: const BoxConstraints(),
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            FontAwesomeIcons.xmark,
            size: 23,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        IconButton(
          padding: const EdgeInsets.only(bottom: 15, right: 2),
          constraints: const BoxConstraints(),
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.cartShopping,
            size: 22,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
