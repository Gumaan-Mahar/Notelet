import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notelet/screens/home_screen.dart';
import 'package:notelet/screens/reminders_screen.dart';

class HomeScreenController extends GetxController {
  HomeScreenController();

  Rx<int> selectedIndex = 0.obs;
  Rx<bool> isGridView = true.obs;

  List<Map<String, dynamic>> drawerItems = [
    {
      'text': 'Notes',
      'iconData': Icons.lightbulb_outline,
      'navigateTo': const HomeScreen(),
    },
    {
      'text': 'Reminders',
      'iconData': Icons.notifications_none,
      'navigateTo': const RemindersScreen(),
    },
    {
      'text': 'Create new label',
      'iconData': Icons.add,
      'navigateTo': () {},
    },
    {
      'text': 'Archieve',
      'iconData': Icons.archive_outlined,
      'navigateTo': () {},
    },
    {
      'text': 'Trash',
      'iconData': Icons.delete_outline_rounded,
      'navigateTo': () {},
    },
    {
      'text': 'Settings',
      'iconData': Icons.settings_outlined,
      'navigateTo': () {},
    },
    {
      'text': 'Help & feedback',
      'iconData': Icons.help_outline,
      'navigateTo': () {},
    },
  ];
}
