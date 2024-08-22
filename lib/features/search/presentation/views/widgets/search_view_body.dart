import 'package:book_ly/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:book_ly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          CustomTextFialed(),
          SizedBox(
            height: 30,
          ),
          Align(alignment: Alignment.centerLeft, child: Text('Search Reslute')),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
