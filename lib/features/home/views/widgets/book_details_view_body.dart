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
          CusttomAppbarDetails(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: CustomBookItemListView())
        ],
      ),
    );
  }
}
