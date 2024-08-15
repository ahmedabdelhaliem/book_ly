import 'package:book_ly/core/utils/assets.dart';
import 'package:book_ly/features/home/views/widgets/CustomListViewItem.dart';
import 'package:book_ly/features/home/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: CustomAppbar(),
        ),
        Customlistviewitem()
      ],
    );
  }
}
