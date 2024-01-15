// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:syncfusion_flutter_calendar/calendar.dart';

class Event {
  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
  Event({
    required this.eventName,
    required this.from,
    required this.to,
    required this.background,
    required this.isAllDay,
  });
}

class DataSource extends CalendarDataSource {
  DataSource(List<Appointment> source) {
    appointments = source;
  }
}
