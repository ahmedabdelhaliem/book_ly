import 'package:book_ly/features/home/views/widgets/action_botton_section.dart';
import 'package:book_ly/features/home/views/widgets/book_details_section.dart';
import 'package:book_ly/features/home/views/widgets/custtom_appbar_details.dart';
import 'package:book_ly/features/home/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CusttomAppbarDetails(),
                BookDetailsSection(),
                ActionBottonSection(),
                Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                SimilarBookSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
