import 'package:ffbooking/app/modules/home/controllers/home_controller.dart';
import 'package:ffbooking/app/modules/home/views/navigationrail_view.dart';
import 'package:ffbooking/app/modules/home/views/stack_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScreenView extends GetView<HomeController> {
  const ScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final deviceType = getDeviceType(MediaQuery.of(context).size);
        controller.screenType.value = deviceType;
        if (sizingInformation.isDesktop) {
          return const Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(
                flex: 1,
                child: NavigationRailView(),
              ),
              VerticalDivider(
                width: 1,
              ),
              Flexible(
                flex: 5,
                child: StackView(),
              ),
            ],
          );
        } else if (sizingInformation.isTablet) {
          return const Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(
                flex: 1,
                child: NavigationRailView(),
              ),
              VerticalDivider(
                width: 1,
              ),
              Flexible(
                flex: 7,
                child: StackView(),
              ),
            ],
          );
        } else {
          return const StackView();
        }
      },
    );
  }
}
