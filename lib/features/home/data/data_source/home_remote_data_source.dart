import 'package:book_ly/constant.dart';
import 'package:book_ly/core/utils/api_servisce.dart';
import 'package:book_ly/core/utils/functions/save_books_data.dart';
import 'package:book_ly/features/home/data/book_model/book_model.dart';
import 'package:book_ly/features/home/domain/entites/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServisce apiServisce;

  HomeRemoteDataSourceImpl({required this.apiServisce});
  @override
  Future<List<BookEntity>> fetchFeatureBooks() async {
    var data = await apiServisce.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServisce.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kNewestBox);

    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
