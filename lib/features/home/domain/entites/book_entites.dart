class BookEntites {
  final String bookId;
  final String? image;
  final String title;
  final String? authName;
  final num? price;
  final num? rating;

  BookEntites(
      {required this.bookId,
      required this.image,
      required this.title,
      required this.authName,
      required this.price,
      required this.rating});
}
