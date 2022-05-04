import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moni/export.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Image.asset(
              "assets/BG.png",
              width: double.infinity,
              fit: BoxFit.fill,
              height: 310.h,
            ),
            Column(
              children: [
                const CustomAppBar(
                  title: "My cluster",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              ColoredText(
                                title: 'Moni dream big community',
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                              YMargin(4),
                              BlackContainerText(
                                primaryText: "Repayment rate: ",
                                secondaryText: "60%",
                                secondaryColor: kSecondaryBase,
                              ),
                              BlackContainerText(
                                primaryText: "Repayment Day: ",
                                secondaryText: "Every Sunday",
                              )
                            ],
                          ),
                          const ProfileImage(
                            size: 48,
                          )
                        ],
                      ),
                      const Divider(
                        color: kGreyDark,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              YMargin(4),
                              ColoredText(
                                title: 'Cluster purse balance',
                                size: 9,
                                color: Colors.white,
                              ),
                              YMargin(4),
                              ColoredText(
                                title: "₦550,000,000",
                                fontWeight: FontWeight.w700,
                                size: 16,
                                color: Colors.white,
                              ),
                              YMargin(4),
                              ColoredText(
                                title: '+₦550,000,000 interest today',
                                color: kPrimaryGreen,
                                size: 9,
                              ),
                              YMargin(4),
                            ],
                          ),
                          MaterialButton(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.0))),
                              minWidth: 109.w,
                              height: 32.h,
                              textColor: Colors.white,
                              color: kPrimaryBase,
                              child: const Text(
                                'View Purse',
                                style: TextStyle(fontSize: 12),
                              ),
                              onPressed: (() {}))
                        ],
                      ),
                      const Divider(
                        color: kGreyDark,
                      ),
                      const TotalContainer(
                        primaryText: "Total interest earned",
                        secondaryText: "₦550,000,000",
                        secondaryColor: kSecondaryBase,
                      ),
                      const Divider(
                        color: kGreyDark,
                      ),
                      const TotalContainer(
                        primaryText: "Total owed by members",
                        secondaryText: "₦550,000,000",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
          Expanded(child: HomeBody())
        ],
      ),
    );
  }
}
