import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moni/export.dart';

class BlackContainerText extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final Color secondaryColor;
  const BlackContainerText({
    Key? key,
    required this.primaryText,
    required this.secondaryText,
    this.secondaryColor = kPrimaryGreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
      child: Row(
        children: [
          ColoredText(
            title: primaryText,
            color: kGreyBase,
            size: 12,
          ),
          ColoredText(
            size: 12,
            title: secondaryText,
            color: secondaryColor,
            fontWeight: FontWeight.w700,
          )
        ],
      ),
      decoration: BoxDecoration(
          color: const Color(0xff090A0A),
          borderRadius: BorderRadius.circular(100)),
    );
  }
}
