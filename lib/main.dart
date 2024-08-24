import 'package:book_ly/constant.dart';
import 'package:book_ly/core/utils/api_servisce.dart';
import 'package:book_ly/core/utils/app_router.dart';
import 'package:book_ly/core/utils/functions/setup_serves.dart';
import 'package:book_ly/core/utils/functions/simiple_bloc_observer.dart';
import 'package:book_ly/features/home/data/data_source/home_local_data_source.dart';
import 'package:book_ly/features/home/data/data_source/home_remote_data_source.dart';
import 'package:book_ly/features/home/data/repos/home_repo_impl.dart';
import 'package:book_ly/features/home/domain/entites/book_entity.dart';
import 'package:book_ly/features/home/domain/use-cases/fetch_feature_books_use_case.dart';
import 'package:book_ly/features/home/domain/use-cases/fetch_newest_books_use_case.dart';
import 'package:book_ly/features/home/presentation/manger/cubit/newest_book_cubit_cubit.dart';
import 'package:book_ly/features/home/presentation/manger/featured_book_cubit/featured_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get_it/get_it.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(BookEntityAdapter());

  setUpServesLocator();

  await Hive.openBox(kFeaturedBox);
  await Hive.openBox(kNewestBox);
  Bloc.observer = SimipleBlocObserver();

  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return FeaturedBooksCubit(
              FetchFeatureBooksUseCase(getIt.get<HomeRepoImpl>()));
        }),
        BlocProvider(create: (context) {
          return NewestBookCubitCubit(
              FetchNewestBooksUseCase(getIt.get<HomeRepoImpl>()));
        }),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimarycolor,
          textTheme: GoogleFonts.montserratAlternatesTextTheme(
              ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
