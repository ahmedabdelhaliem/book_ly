import 'package:book_ly/features/home/views/widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';

class FeatureListViewitem extends StatelessWidget {
  const FeatureListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Customlistviewitem(),
          );
        },
      ),
    );
  }
}
