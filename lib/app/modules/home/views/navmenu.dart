// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavMenuItem {
  Text label;
  Icon icon;
  NavMenuItem({
    required this.label,
    required this.icon,
  });
}

final navMenuItems = [
  NavMenuItem(
    icon: const Icon(Icons.calendar_month),
    label: const Text('Calendar'),
  ),
  NavMenuItem(
    icon: const Icon(Icons.schedule),
    label: const Text('Availability'),
  ),
  NavMenuItem(
    icon: const Icon(Icons.settings),
    label: const Text('Settings'),
  ),
];
