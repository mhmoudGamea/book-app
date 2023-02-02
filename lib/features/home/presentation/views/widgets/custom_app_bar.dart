import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      child: Row(
        children: [
          Image.asset('assets/images/logo0.png', fit: BoxFit.cover, width: 40),
          const Spacer(),
          IconButton(
            padding: const EdgeInsets.only(bottom: 15, right: 2),
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 23,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
