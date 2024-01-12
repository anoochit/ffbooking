import 'package:ffbooking/app/modules/home/controllers/home_controller.dart';
import 'package:ffbooking/app/modules/home/views/navmenu.dart';
import 'package:ffbooking/app/widgets/views/brand_logo_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NavigationDrawerView extends GetView<HomeController> {
  const NavigationDrawerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const BrandLogoView(),
          Expanded(
              child: ListView(
            children: navMenuItems.asMap().entries.map(
              (e) {
                return ListTile(
                  leading: e.value.icon,
                  title: e.value.label,
                  onTap: () {
                    controller.navIndex.value = e.key;
                    Get.back();
                  },
                );
              },
            ).toList(),
          ))
        ],
      ),
    );
  }
}
