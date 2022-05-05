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
                      YMargin(6),
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
          const CustomDivider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ClusterHeader(
                  title: "Group invite Link/Code", image: 'assets/link 2.png'),
              const ColoredText(
                title: 'Use the link or code below to invite new member',
                color: Color(0xff303437),
                size: 13,
              ),
              const YMargin(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ColoredText(
                        title: 'Member invite code',
                        color: Color(0xff303437),
                        size: 13,
                      ),
                      YMargin(4),
                      ColoredText(
                        title: '30DF38TG000',
                        size: 16,
                      ),
                    ],
                  ),
                  const ColoredText(
                    size: 13,
                    title: "Get new code",
                    color: kPrimaryRed,
                  )
                ],
              ),
            ],
          ),
          const CustomDivider(),
          Column(
            children: [
              const ClusterHeader(
                  title: 'Loan setting', image: "assets/Group.png"),
              ColoredText(
                title: 'Member invite code',
                size: 13,
              ),
              YMargin(4),
              ColoredText(
                fontWeight: FontWeight.w500,
                title: '₦550,000,000',
                size: 16,
              ),
              Row(
                children: const [
                  ColoredText(
                    title: 'Member invite code',
                    size: 13,
                  ),
                  YMargin(4),
                  ColoredText(
                    fontWeight: FontWeight.w500,
                    title: '₦550,000,000',
                  ),
                ],
              )
            ],
          )
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

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        YMargin(10),
        Divider(
          color: kGreyLight,
        ),
        YMargin(10),
      ],
    );
  }
}
