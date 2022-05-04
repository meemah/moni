import 'package:flutter/material.dart';
import 'package:moni/custom_widgets/cluster_details.dart';
import 'package:moni/export.dart';

class HomeBody extends StatefulWidget {
  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: kPrimaryBase,
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(color: kPrimaryBase, width: 2)),
              controller: _tabController,
              tabs: [
                Tab(
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: const ColoredText(
                        title: 'Members (9)',
                        alignment: TextAlign.center,
                      )),
                ),
                Tab(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const ColoredText(
                      title: 'Cluster Details',
                      alignment: TextAlign.center,
                    ),
                  ),
                )
              ]),
          Expanded(
              child: TabBarView(controller: _tabController, children: [
            ListView.builder(
                itemCount: 3,
                itemBuilder: (ctx, index) {
                  return LoanContainer();
                }),
            const ClusterDetails()
          ]))
        ],
      ),
    );
  }
}
