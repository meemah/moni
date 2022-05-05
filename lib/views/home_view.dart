import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moni/export.dart';
import 'package:provider/provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<HomeViewmodel>(builder: (ctx, homeVm, _) {
      return homeVm.loanResponse.status == Status.LOADING
          ? Center(
              child: LoadingAnimationWidget.beat(
                color: kPrimaryRed,
                size: 200.0,
              ),
            )
          : homeVm.loanResponse.status == Status.ERROR
              ? Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(homeVm.loanResponse.message),
                    GestureDetector(
                      onTap: () => homeVm.getLoanData(),
                      child: const ColoredText(
                        title: "Tap to Retry!!!",
                        color: kPrimaryRed,
                      ),
                    )
                  ],
                ))
              : Column(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ColoredText(
                                          title: homeVm.loanResponse.data!
                                                  .clusterName ??
                                              '-',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        const YMargin(4),
                                        BlackContainerText(
                                          primaryText: "Repayment rate: ",
                                          secondaryText:
                                              "${homeVm.loanResponse.data!.clusterRepaymentRate ?? '-'}%",
                                          secondaryColor: kSecondaryBase,
                                        ),
                                        BlackContainerText(
                                          primaryText: "Repayment Day: ",
                                          secondaryText:
                                              "Every ${homeVm.loanResponse.data!.clusterRepaymentDay ?? '-'}",
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const YMargin(4),
                                        const ColoredText(
                                          title: 'Cluster purse balance',
                                          size: 9,
                                          color: Colors.white,
                                        ),
                                        const YMargin(4),
                                        ColoredText(
                                          title:
                                              "₦${homeVm.loanResponse.data!.clusterPurseBalance ?? '-'}",
                                          fontWeight: FontWeight.w700,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                        const YMargin(4),
                                        const ColoredText(
                                          title: '+₦550,000,000 interest today',
                                          color: kPrimaryGreen,
                                          size: 9,
                                        ),
                                        const YMargin(4),
                                      ],
                                    ),
                                    MaterialButton(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6.0))),
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
                                TotalContainer(
                                  primaryText: "Total interest earned",
                                  secondaryText:
                                      "₦${homeVm.loanResponse.data!.totalInterestEarned ?? '-'}",
                                  secondaryColor: kSecondaryBase,
                                ),
                                const Divider(
                                  color: kGreyDark,
                                ),
                                TotalContainer(
                                  primaryText: "Total owed by members",
                                  secondaryText:
                                      "₦${homeVm.loanResponse.data!.totalOwedByMembers ?? '-'}",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                    Expanded(child: HomeBody())
                  ],
                );
    }));
  }
}
