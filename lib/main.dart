import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';

import './constants.dart';

void main() {
  ApiService.initializeDio();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.getRouter,
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      darkTheme: ThemeData(
        scaffoldBackgroundColor: primaryDarkColor,
        fontFamily: kNunito,
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
