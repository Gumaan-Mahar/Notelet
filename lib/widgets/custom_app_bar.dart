import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notelet/controllers/home_screen_controller.dart';
import 'package:simple_drawer/simple_drawer.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key,
      required this.isHomeScreen,
      required this.title,
      required this.firstIcon,
      required this.secondIcon})
      : super(key: key);
  final bool isHomeScreen;
  final String title;
  final Widget firstIcon;
  final Widget secondIcon;

  @override
  Widget build(BuildContext context) {
    final HomeScreenController homeScreenController =
        Get.put(HomeScreenController());
    return Container(
      height: Get.height * 0.075,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: isHomeScreen ? lightIndigo : Colors.transparent,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey.shade800,
                  size: 30.0,
                ),
                onPressed: () {
                  SimpleDrawer.activate('left');
                },
              ),
              !isHomeScreen ? const SizedBox(width: 12.0) : const SizedBox(),
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: isHomeScreen ? 18.0 : 20.5,
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),
          Row(
            children: [
              firstIcon,
              const SizedBox(width: 20.0),
              secondIcon,
            ],
          )
        ],
      ),
    );
  }
}
