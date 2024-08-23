import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/presentation/views/widgets/custom_book_item_list_view.dart';
import 'package:book_ly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:book_ly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppbar(),
              ),
              CustomBookItemListView(), // Corrected capitalization.
              SizedBox(height: 20), // Added space between widgets.
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child:
              BestSellerListViewItem(), // Use the list view instead of a single item.
        ),
      ],
    );
  }
}
