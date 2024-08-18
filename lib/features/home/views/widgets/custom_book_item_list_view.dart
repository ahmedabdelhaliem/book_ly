import 'package:book_ly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookItemListView extends StatelessWidget {
  const CustomBookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(AssetsData.testImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
