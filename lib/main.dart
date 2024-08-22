import 'package:book_ly/constant.dart';
import 'package:book_ly/core/utils/app_router.dart';
import 'package:book_ly/features/home/domain/entites/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(const Bookly());
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);
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
        textTheme: GoogleFonts.montserratAlternatesTextTheme(
            ThemeData.dark().textTheme),
      ),
    );
  }
}
