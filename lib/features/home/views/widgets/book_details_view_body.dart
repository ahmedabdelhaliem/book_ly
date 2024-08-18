import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/views/widgets/book_rating.dart';
import 'package:book_ly/features/home/views/widgets/custom_book_item_list_view.dart';
import 'package:book_ly/features/home/views/widgets/custtom_appbar_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CusttomAppbarDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: CustomBookItemListView(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'Programming Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Ahmed abdelhaliem Book',
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
