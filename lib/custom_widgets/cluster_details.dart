import 'package:flutter/material.dart';
import 'package:moni/export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClusterDetails extends StatelessWidget {
  const ClusterDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ClusterHeader(
                  title: "Cluster purse setting",
                  image: 'assets/badge-dollar 1.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ColoredText(
                        title: 'Frequency of contribution',
                        color: Color(0xff303437),
                        size: 13,
                      ),
                      ColoredText(
                        title: 'Monthly upfront',
                      ),
                      YMargin(8),
                      ColoredText(
                        title: '₦550,000,000',
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  const ColoredText(
                    size: 13,
                    title: "Change",
                    color: kPrimaryRed,
                  )
                ],
              ),
              const YMargin(8),
              const ColoredText(
                  size: 13,
                  color: kGreyDark,
                  title: "Your contribution is 8% of your eligible amount ")
            ],
          ),
        ],
      ),
    );
  }
}

class ClusterHeader extends StatelessWidget {
  final String title;
  final String image;
  const ClusterHeader({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      child: Row(
        children: [
          Image.asset(image),
          const XMargin(5),
          ColoredText(
            title: title,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
