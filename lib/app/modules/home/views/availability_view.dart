import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AvailabilityView extends GetView {
  const AvailabilityView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'AvailabilityView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
