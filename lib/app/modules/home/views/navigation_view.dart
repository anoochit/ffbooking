import 'package:ffbooking/app/modules/home/controllers/home_controller.dart';
import 'package:ffbooking/config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

class NavigationView extends GetView<HomeController> {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => NavigationRail(
        extended: true,
        // labelType: NavigationRailLabelType.selected,
        onDestinationSelected: (value) => controller.navIndex.value = value,
        selectedLabelTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
        leading: Column(
          children: [
            const Gap(16.0),
            CircleAvatar(
              radius: 60,
              child:
                  Text(auth.currentUser!.email!.substring(0, 1).toUpperCase()),
            ),
            const Gap(16.0),
            Text('${auth.currentUser?.email}'),
            const Gap(16.0),
          ],
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
