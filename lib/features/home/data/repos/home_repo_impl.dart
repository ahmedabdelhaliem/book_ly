import 'package:book_ly/core/errors/failure.dart';
import 'package:book_ly/features/home/data/data_source/home_local_data_source.dart';
import 'package:book_ly/features/home/data/data_source/home_remote_data_source.dart';
import 'package:book_ly/features/home/domain/entites/book_entity.dart';
import 'package:book_ly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBooks() async {
    try {
      var listBooks = homeLocalDataSource.fetchFeatureBooks();
      if (listBooks.isNotEmpty) {
        return right(listBooks);
      }
      var books = await homeLocalDataSource.fetchFeatureBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
      // TODO
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var listBooks = homeLocalDataSource.fetchNewestBooks();
      if (listBooks.isNotEmpty) {
        return right(listBooks);
      }
      var books = await homeLocalDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
      // TODO
    }
  }
}
