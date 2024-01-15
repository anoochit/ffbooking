import 'package:ffbooking/app/modules/home/controllers/home_controller.dart';
import 'package:ffbooking/app/modules/home/views/navigation_drawer_view.dart';
import 'package:ffbooking/config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SettingsPageView extends GetView<HomeController> {
  const SettingsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Sign Out'),
            onTap: () => auth.signOut(),
          )
        ],
      ),
      drawer: (controller.screenType.value == DeviceScreenType.mobile)
          ? const NavigationDrawerView()
          : null,
    );
  }
}
