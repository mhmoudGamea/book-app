import 'package:flutter/material.dart';

import '../../constants.dart';

abstract class Styles {
  static const titleMedium = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.8,
  );

  static const header = TextStyle(
    fontFamily: kGtSectra,
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.8,
    overflow: TextOverflow.ellipsis,
  );

  static const description = TextStyle(
    color: Color(0xff707070),
    fontSize: 16,
    fontWeight: FontWeight.w200,
    letterSpacing: 0.5,
  );
}
