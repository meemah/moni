import 'package:flutter/material.dart';
import 'package:moni/export.dart';

class LoanContainer extends StatelessWidget {
  final Color color;
  final Color? secColor;
  final bool showDetails;
  const LoanContainer(
      {Key? key,
      this.color = Colors.grey,
      this.secColor = kPrimaryGreen,
      this.showDetails = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProfileImage(
          imageUrl: '',
        ),
        const XMargin(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const ColoredText(
                  title: "helllooooo",
                  color: Color(0xff13163E),
                ),
                showDetails
                    ? Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: 5,
                            width: 5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffC4C4C4)),
                          ),
                          ColoredText(
                            title: "ghhhhhddddd",
                            color: color,
                            size: 12,
                          )
                        ],
                      )
                    : Container()
              ],
            ),
            ColoredText(
              title: 'nnfnfnnfnfnf',
              color: secColor ?? color,
              size: 12,
            )
          ],
        )
      ],
    );
  }
}
