import 'package:book_ly/features/home/domain/entites/book_entites.dart';

abstract class HomeLocalDataSource {
  List<BookEntites> fetchFeatureBooks();
  List<BookEntites> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntites> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntites> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
