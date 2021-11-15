import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import 'add_bottomsheet.dart';

class AddScreenNavigationBar extends StatelessWidget {
  const AddScreenNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: lightIndigo,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                color: Colors.black,
                padding: EdgeInsets.zero,
                iconSize: 30.0,
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  addBottomSheet();
                },
                icon: const Icon(Icons.add_box_outlined),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                color: Colors.black,
                iconSize: 30.0,
                onPressed: () {},
                icon: const Icon(Icons.palette_outlined),
              ),
            ],
          ),
          const Text(
            'Edited 4:14 PM',
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
          IconButton(
            color: Colors.black,
            iconSize: 30.0,
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
