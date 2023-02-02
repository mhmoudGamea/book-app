import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
    required Animation<Offset> slidingAnimation,
  })  : _slidingAnimation = slidingAnimation,
        super(key: key);

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: _slidingAnimation,
            child: const Text(
              'Support your reading habit without paying a dime or even taking a trip to the library.',
              style: Styles.titleMedium,
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
