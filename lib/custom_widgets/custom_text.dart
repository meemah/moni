import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColoredText extends StatelessWidget {
  final String title;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final TextAlign alignment;
  const ColoredText(
      {Key? key,
      required this.title,
      this.color = Colors.black,
      this.size = 14.0,
      this.fontWeight = FontWeight.normal,
      this.alignment = TextAlign.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: alignment,
      style: TextStyle(color: color, fontSize: size.sp, fontWeight: fontWeight),
    );
  }
}
