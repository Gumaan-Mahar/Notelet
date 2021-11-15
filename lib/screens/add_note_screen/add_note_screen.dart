import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:notelet/constants.dart';
import 'package:notelet/controllers/add_screen_controller.dart';

import 'components/custom_textfield.dart';
import 'components/navigation_bar.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddScreenController addScreenController =
        Get.put(AddScreenController());
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: lightIndigo,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.grey.shade800,
          iconSize: 30.0,
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.push_pin_outlined),
            color: Colors.grey.shade800,
            iconSize: 30.0,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notification_add_outlined),
            color: Colors.grey.shade800,
            iconSize: 30.0,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.archive_outlined),
            color: Colors.grey.shade800,
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: const AddScreenNavigationBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(
            () => Column(
              children: [
                addScreenController.images.isNotEmpty
                    ? StaggeredGridView.countBuilder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        itemCount: addScreenController.images.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Image.file(
                            File(addScreenController.images[index].path),
                            fit: BoxFit.fill,
                          );
                        },
                        staggeredTileBuilder: (int index) =>
                            StaggeredTile.count(3, index.isOdd ? 3 : 1),
                        mainAxisSpacing: 2.0,
                        crossAxisSpacing: 2.0,
                      )
                    : const SizedBox.shrink(),
                const CustomTextField(helpText: 'Title'),
                const CustomTextField(
                  helpText: 'Note',
                  textSize: 21.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
