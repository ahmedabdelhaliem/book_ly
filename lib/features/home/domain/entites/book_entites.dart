class BookEntites {
  final String image;
  final String title;
  final String authName;
  final num price;
  final num rating;

  BookEntites(this.rating,
      {required this.image,
      required this.title,
      required this.authName,
      required this.price});
}
