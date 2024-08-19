import 'package:book_ly/core/errors/failure.dart';
import 'package:book_ly/features/home/domain/entites/book_entites.dart';
import 'package:book_ly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeatureBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeatureBooksUseCase({required this.homeRepo});
  Future<Either<Failure, List<BookEntites>>> fetchFeatureBooks() {
    return homeRepo.fetchFeatureBooks();
  }
}
