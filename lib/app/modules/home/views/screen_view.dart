import 'package:ffbooking/app/modules/home/views/navigation_view.dart';
import 'package:ffbooking/app/modules/home/views/stack_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ScreenView extends GetView {
  const ScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
            flex: 1,
            child: NavigationView(),
          ),
          VerticalDivider(
            width: 1,
          ),
          Flexible(
            flex: 5,
            child: StackView(),
          )
        ],
      ),
    );
  }
}
