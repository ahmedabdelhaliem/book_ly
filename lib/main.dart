import 'package:book_ly/constant.dart';
import 'package:book_ly/core/utils/app_router.dart';
import 'package:book_ly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimarycolor,
        textTheme:
            GoogleFonts.monsieurLaDoulaiseTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
