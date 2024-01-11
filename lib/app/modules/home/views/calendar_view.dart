import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CalendarView extends GetView {
  const CalendarView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // TODO : calendar view
      body: Center(
        child: Text(
          'CalendarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
