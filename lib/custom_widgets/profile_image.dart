import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImage extends StatelessWidget {
  final String imageUrl;
  final double size;
  const ProfileImage({
    Key? key,
    this.imageUrl = "",
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.h,
      width: size.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[300],
          image: DecorationImage(
            onError: (exception, stackTrace) => const Icon(Icons.person),
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          )),
    );
  }
}
