import 'package:book_ly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          '4.5',
          style: Styles.textStyle16,
        ),
        Text(
          '254',
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
