import 'package:book_ly/core/errors/failure.dart';
import 'package:book_ly/core/use_case/use_case.dart';
import 'package:book_ly/features/home/data/repos/home_repo_impl.dart';
import 'package:book_ly/features/home/domain/entites/book_entity.dart';
import 'package:book_ly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeatureBooksUseCase extends UseCase<List<BookEntity>, Nopram> {
  final HomeRepo homeRepo;

  FetchFeatureBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([Nopram? pram]) {
    // TODO: implement call
    return homeRepo.fetchFeatureBooks();
  }
}
