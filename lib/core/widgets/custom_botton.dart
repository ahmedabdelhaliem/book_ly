import 'package:book_ly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton(
      {super.key,
      required this.textcolor,
      required this.text,
      this.borderRadius,
      required this.backGroundColor});
  final Color textcolor;
  final String text;
  final BorderRadius? borderRadius;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(12))),
          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(color: textcolor, fontWeight: FontWeight.w900),
          )),
    );
  }
}
