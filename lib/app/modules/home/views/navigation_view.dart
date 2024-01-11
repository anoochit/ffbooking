import 'package:ffbooking/app/modules/home/controllers/home_controller.dart';
import 'package:ffbooking/config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationView extends GetView<HomeController> {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    return Obx(
      () => NavigationRail(
        extended: ((deviceType == DeviceScreenType.tablet) ||
                (deviceType == DeviceScreenType.mobile))
            ? false
            : true,
        labelType: (deviceType == DeviceScreenType.tablet)
            ? NavigationRailLabelType.all
            : (deviceType == DeviceScreenType.mobile)
                ? NavigationRailLabelType.selected
                : null,
        onDestinationSelected: (value) => controller.navIndex.value = value,
        selectedLabelTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: ((deviceType == DeviceScreenType.tablet) ||
                  (deviceType == DeviceScreenType.mobile))
              ? FlutterLogo(
                  size: 64,
                  style: FlutterLogoStyle.markOnly,
                )
              : FlutterLogo(
                  size: 128,
                  style: FlutterLogoStyle.markOnly,
                ),
        ),
        destinations: const [
          NavigationRailDestination(
            icon: Icon(Icons.calendar_month),
            label: Text('Calendar'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.schedule),
            label: Text('Availability'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.settings),
            label: Text('Settings'),
          ),
        ],
        selectedIndex: controller.navIndex.value,
      ),
    );
  }
}
