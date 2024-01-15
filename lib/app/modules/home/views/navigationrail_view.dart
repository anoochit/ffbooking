import 'package:ffbooking/app/modules/home/controllers/home_controller.dart';
import 'package:ffbooking/app/modules/home/views/navmenu.dart';
import 'package:ffbooking/app/widgets/views/brand_logo_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationRailView extends GetView<HomeController> {
  const NavigationRailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => NavigationRail(
        extended: ((controller.screenType.value == DeviceScreenType.tablet))
            ? false
            : true,
        labelType: (controller.screenType.value == DeviceScreenType.tablet)
            ? NavigationRailLabelType.none
            : null,
        onDestinationSelected: (value) => controller.navIndex.value = value,
        selectedLabelTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
        leading: const BrandLogoView(),
        destinations: navMenuItems
            .map((e) => NavigationRailDestination(icon: e.icon, label: e.label))
            .toList(),
        selectedIndex: controller.navIndex.value,
      ),
    );
  }
}
