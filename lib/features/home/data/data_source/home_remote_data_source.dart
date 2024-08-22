import 'package:book_ly/core/utils/api_servisce.dart';
import 'package:book_ly/features/home/data/book_model/book_model.dart';
import 'package:book_ly/features/home/domain/entites/book_entites.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntites>> fetchFeatureBooks();
  Future<List<BookEntites>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServisce apiServisce;

  HomeRemoteDataSourceImpl({required this.apiServisce});
  @override
  Future<List<BookEntites>> fetchFeatureBooks() async {
    var data = await apiServisce.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntites> books = getBooksList(data);
    return books;
  }

  @override
  Future<List<BookEntites>> fetchNewestBooks() async {
    var data = await apiServisce.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    List<BookEntites> books = getBooksList(data);
    return books;
  }

  List<BookEntites> getBooksList(Map<String, dynamic> data) {
    List<BookEntites> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
