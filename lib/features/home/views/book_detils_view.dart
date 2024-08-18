import 'package:book_ly/features/home/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetilsView extends StatelessWidget {
  const BookDetilsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: BookDetailsViewBody()));
  }
}
