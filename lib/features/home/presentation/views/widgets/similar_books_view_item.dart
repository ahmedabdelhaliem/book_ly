import 'package:book_ly/features/home/presentation/views/widgets/custom_book_item_list_view.dart';
import 'package:flutter/material.dart';

class SimilarListViewItem extends StatelessWidget {
  const SimilarListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookItemListView(),
          );
        },
      ),
    );
  }
}
