import 'package:book_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

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
            onPressed: () {
              GoRouter.of(context).push(SearchView.rn);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 21,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
