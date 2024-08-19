import 'package:book_ly/core/errors/failure.dart';
import 'package:book_ly/features/home/domain/entites/book_entites.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntites>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookEntites>>> fetchNewestBooks();
}
