import 'package:enaex_app/src/controllers/TabController.dart';
import 'package:enaex_app/src/widgets/navigation_widget.dart';
import 'package:get/get.dart';

import './index.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabs"),
        ),
        body: _Pages(),
        bottomNavigationBar: const NavigationWidget(),
      ),
    );
  }
}

class _Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabsController tabController = Get.put(TabsController());

    return PageView(
      controller: tabController.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        DashboardScreen(),
        TaskScreen(),
        NotificationsScreen(),
      ],
    );
  }
}