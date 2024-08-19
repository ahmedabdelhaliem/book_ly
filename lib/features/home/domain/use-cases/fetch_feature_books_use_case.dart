import 'package:book_ly/core/errors/failure.dart';
import 'package:book_ly/core/use_case/use_case.dart';
import 'package:book_ly/features/home/domain/entites/book_entites.dart';
import 'package:book_ly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeatureBooksUseCase extends UseCase<List<BookEntites>, Nopram> {
  final HomeRepo homeRepo;

  FetchFeatureBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntites>>> call([Nopram? pram]) {
    // TODO: implement call
    return homeRepo.fetchFeatureBooks();
  }
}
