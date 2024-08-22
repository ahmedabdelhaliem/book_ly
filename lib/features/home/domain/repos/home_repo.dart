import 'package:book_ly/core/errors/failure.dart';
import 'package:book_ly/features/home/domain/entites/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
