import 'package:book_ly/core/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          Expanded(
            child: CustomBotton(
              textcolor: Colors.black,
              text: '19.199',
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              backGroundColor: Colors.white,
            ),
          ),
          Expanded(
            child: CustomBotton(
              textcolor: Colors.white,
              text: 'Free review',
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              backGroundColor: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
