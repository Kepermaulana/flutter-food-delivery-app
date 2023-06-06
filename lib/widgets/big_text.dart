import 'package:flutter/material.dart';

import '../utils/dimension.dart';

class BigText extends StatelessWidget {
  const BigText(
      {super.key,
      this.color = const Color(0xFF332d2b),
      this.size = 0,
      this.overflow = TextOverflow.ellipsis,
      required this.text});

  final Color color;

  final String text;

  final double size;

  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontFamily: "Roboto",
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
