import 'package:bloc/bloc.dart';
import 'package:book_ly/core/errors/failure.dart';
import 'package:book_ly/features/home/domain/entites/book_entity.dart';
import 'package:book_ly/features/home/domain/use-cases/fetch_feature_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final FetchFeatureBooksUseCase featureBooksUseCase;
  FeaturedBooksCubit(this.featureBooksUseCase) : super(FeaturedBooksInitial());
  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featureBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
