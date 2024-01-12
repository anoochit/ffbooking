import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BrandLogoView extends GetView {
  const BrandLogoView({super.key});
  @override
  Widget build(BuildContext context) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ((deviceType == DeviceScreenType.tablet) ||
              (deviceType == DeviceScreenType.mobile))
          ? const FlutterLogo(
              size: 64,
              style: FlutterLogoStyle.markOnly,
            )
          : const FlutterLogo(
              size: 128,
              style: FlutterLogoStyle.markOnly,
            ),
    );
  }
}
