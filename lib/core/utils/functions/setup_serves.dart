import 'package:book_ly/core/utils/api_servisce.dart';
import 'package:book_ly/features/home/data/data_source/home_local_data_source.dart';
import 'package:book_ly/features/home/data/data_source/home_remote_data_source.dart';
import 'package:book_ly/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServesLocator() {
  getIt.registerSingleton(ApiServisce(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
        homeRemoteDataSource:
            HomeRemoteDataSourceImpl(apiServisce: getIt.get<ApiServisce>()),
        homeLocalDataSource: HomeLocalDataSourceImpl()),
  );
}
