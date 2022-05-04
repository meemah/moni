import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moni/export.dart';

class LoanTitle extends StatelessWidget {
  final String title;
  const LoanTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColoredText(
          title: title,
          color: const Color(0xff13163E),
        ),
        Container(
          color: Colors.black.withOpacity(0.54),
          width: 9.w,
          height: 1.3.h,
        )
      ],
    );
  }
}
