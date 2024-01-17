import 'package:ffbooking/app/data/models/event.dart';
import 'package:ffbooking/app/modules/home/controllers/home_controller.dart';
import 'package:ffbooking/app/modules/home/views/navigation_drawer_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPageView extends GetView<HomeController> {
  const CalendarPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
      ),
      // TODO : add calendar view
      body: SfCalendar(
        view: CalendarView.month,
        allowedViews: [
          CalendarView.day,
          CalendarView.month,
          CalendarView.schedule,
          CalendarView.timelineDay,
          CalendarView.timelineMonth,
          CalendarView.timelineWeek,
        ],
        showNavigationArrow: true,
        showDatePickerButton: true,
        showTodayButton: true,
        dataSource: _getDataSource(),
        monthViewSettings: const MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          appointmentDisplayCount: 5,
          // showAgenda: true,
        ),
      ),
      drawer: (controller.screenType.value == DeviceScreenType.mobile)
          ? const NavigationDrawerView()
          : null,
    );
  }

  // TODO : add mockup datasource
  DataSource _getDataSource() {
    List<Appointment> appointments = <Appointment>[];

    appointments.add(
      Appointment(
        subject: 'Live record video',
        startTime: DateTime.now(),
        endTime: DateTime.now().add(
          const Duration(hours: 2),
        ),
        color: Colors.blue,
      ),
    );

    appointments.add(
      Appointment(
        subject: 'Meeting',
        startTime: DateTime(2024, 1, 16),
        endTime: DateTime(2024, 1, 18).add(
          const Duration(hours: 2),
        ),
        isAllDay: true,
        color: Colors.amber,
      ),
    );

    appointments.add(
      Appointment(
        subject: 'Facebook Live',
        startTime: DateTime(2024, 1, 16, 18, 0, 0),
        endTime: DateTime(2024, 1, 16, 18, 0, 0).add(
          const Duration(hours: 2),
        ),
        color: Colors.red,
        recurrenceRule: 'FREQ=WEEKLY;INTERVAL=1;BYDAY=TU',
      ),
    );

    return DataSource(appointments);
  }
}
