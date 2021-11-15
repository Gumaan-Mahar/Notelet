import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notelet/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: Get.height * 0.1,
        color: lightIndigo,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.check_box_outlined,
                color: Colors.black,
              ),
              padding: const EdgeInsets.only(right: 12.0, left: 10.0),
              iconSize: 30.0,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.brush_outlined,
                color: Colors.black,
              ),
              padding: const EdgeInsets.only(right: 12.0),
              iconSize: 30.0,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.keyboard_voice_outlined,
                color: Colors.black,
              ),
              padding: const EdgeInsets.only(right: 12.0),
              iconSize: 30.0,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.photo_size_select_actual_outlined,
                color: Colors.black,
              ),
              padding: const EdgeInsets.only(right: 12.0),
              iconSize: 30.0,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
