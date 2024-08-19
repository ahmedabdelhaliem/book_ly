import 'package:book_ly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, pram> {
  Future<Either<Failure, Type>> call([pram pram]);
}

class Nopram {}
