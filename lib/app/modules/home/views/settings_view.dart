import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SettingsView extends GetView {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SignOutButton(),
      ),
    );
  }
}
