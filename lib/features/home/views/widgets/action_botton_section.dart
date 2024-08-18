import 'package:book_ly/features/home/views/widgets/book_action.dart';
import 'package:flutter/material.dart';

class ActionBottonSection extends StatelessWidget {
  const ActionBottonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 30,
        ),
        BookAction(),
      ],
    );
  }
}
