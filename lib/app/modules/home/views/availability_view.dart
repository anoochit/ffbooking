import 'package:ffbooking/app/modules/home/controllers/home_controller.dart';
import 'package:ffbooking/app/modules/home/views/navigation_drawer_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AvailabilityPageView extends GetView<HomeController> {
  const AvailabilityPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Availability'),
      ),
      body: Container(),
      drawer: (controller.screenType.value == DeviceScreenType.mobile)
          ? const NavigationDrawerView()
          : null,
    );
  }
}
