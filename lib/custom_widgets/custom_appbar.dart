import 'package:flutter/material.dart';
import 'package:moni/export.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: kToolbarHeight),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BackButton(
              onPressed: (() => Navigator.pop(context)),
              color: Colors.white,
            ),
            // Spacer(),
            Center(
              child: ColoredText(
                alignment: TextAlign.center,
                title: title,
                fontWeight: FontWeight.w700,
                size: 17,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
