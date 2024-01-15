import 'package:ffbooking/app/modules/home/controllers/home_controller.dart';
import 'package:ffbooking/app/modules/home/views/availability_view.dart';
import 'package:ffbooking/app/modules/home/views/calendar_view.dart';
import 'package:ffbooking/app/modules/home/views/settings_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class StackView extends GetView<HomeController> {
  const StackView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => IndexedStack(
        index: controller.navIndex.value,
        children: const [
          CalendarPageView(),
          AvailabilityPageView(),
          SettingsPageView(),
        ],
      ),
    );
  }
}
