import 'package:ffbooking/app/modules/home/views/navigation_view.dart';
import 'package:ffbooking/app/modules/home/views/stack_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScreenView extends GetView {
  const ScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);

    return Scaffold(
      body: Flex(
        direction: Axis.horizontal,
        children: [
          const Flexible(
            flex: 1,
            child: NavigationView(),
          ),
          const VerticalDivider(
            width: 1,
          ),
          const Gap(16.0),
          Flexible(
            flex: (deviceType == DeviceScreenType.tablet)
                ? 6
                : (deviceType == DeviceScreenType.mobile)
                    ? 4
                    : 5,
            child: const StackView(),
          ),
        ],
      ),
    );
  }
}
