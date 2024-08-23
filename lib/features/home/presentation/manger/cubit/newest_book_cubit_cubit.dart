import 'package:bloc/bloc.dart';
import 'package:book_ly/features/home/domain/entites/book_entity.dart';
import 'package:book_ly/features/home/domain/use-cases/fetch_newest_books_use_case.dart';
import 'package:book_ly/features/home/presentation/manger/featured_book_cubit/featured_books_cubit.dart';
import 'package:meta/meta.dart';

part 'newest_book_cubit_state.dart';

class NewestBookCubitCubit extends Cubit<NewestBookCubitState> {
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  NewestBookCubitCubit(this.fetchNewestBooksUseCase)
      : super(NewestBookCubitInitial());
  Future<void> fetchNewestBooks() async {
    emit(NewestBookCubitLoading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold((failure) {
      emit(NewestBookCubitFailure(failure.message));
    }, (books) {
      emit(NewestBookCubitSuccess(books: books));
    });
  }
}
