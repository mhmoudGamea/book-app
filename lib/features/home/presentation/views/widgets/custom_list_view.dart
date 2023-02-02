import 'package:book_app/features/home/presentation/views/widgets/book_cover.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final double fraction;
  const CustomListView({Key? key, required this.fraction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * fraction,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        separatorBuilder: (context, index) => const SizedBox(width: 6),
        itemBuilder: (context, index) => const BookCover(),
      ),
    );
  }
}
