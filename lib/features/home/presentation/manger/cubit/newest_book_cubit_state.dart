part of 'newest_book_cubit_cubit.dart';

@immutable
sealed class NewestBookCubitState {}

final class NewestBookCubitInitial extends NewestBookCubitState {}

final class NewestBookCubitLoading extends NewestBookCubitState {}

final class NewestBookCubitSuccess extends NewestBookCubitState {
  final List<BookEntity> books;

  NewestBookCubitSuccess({required this.books});
}

final class NewestBookCubitFailure extends NewestBookCubitState {
  final String errMessage;

  NewestBookCubitFailure(this.errMessage);
}
