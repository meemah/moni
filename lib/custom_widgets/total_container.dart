import 'package:flutter/material.dart';

import 'package:moni/export.dart';

class TotalContainer extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final Color secondaryColor;
  const TotalContainer(
      {Key? key,
      required this.primaryText,
      required this.secondaryText,
      this.secondaryColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColoredText(
          title: primaryText,
          size: 12,
          color: kGreyBase,
        ),
        ColoredText(
          title: secondaryText,
          color: secondaryColor,
        ),
      ],
    );
  }
}
