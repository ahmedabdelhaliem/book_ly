import 'package:book_ly/core/utils/assets.dart';
import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/views/widgets/CustomListViewItem.dart';
import 'package:book_ly/features/home/views/widgets/best_seller_list_view.dart';
import 'package:book_ly/features/home/views/widgets/custom_appbar.dart';
import 'package:book_ly/features/home/views/widgets/feature_list%20_view-item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: CustomAppbar(),
        ),
        FeatureListViewitem(),
        Text(
          'Best Seller',
          style: Styles.textStyle18,
        ),
        BestSellerListView()
      ],
    );
  }
}
