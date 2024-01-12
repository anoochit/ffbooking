import 'package:ffbooking/app/modules/home/views/navigationrail_view.dart';
import 'package:ffbooking/app/modules/home/views/stack_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScreenView extends GetView {
  const ScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);

    if (deviceType == DeviceScreenType.mobile) {
      return const StackView();
    } else {
      return Flex(
        direction: Axis.horizontal,
        children: [
          const Flexible(
            flex: 1,
            child: NavigationRailView(),
          ),
          const VerticalDivider(
            width: 1,
          ),
          Flexible(
            flex: (deviceType == DeviceScreenType.tablet) ? 6 : 5,
            child: const StackView(),
          ),
        ],
      );
    }
  }
}
