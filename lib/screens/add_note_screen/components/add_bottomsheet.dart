import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:notelet/controllers/add_screen_controller.dart';

Future<dynamic> addBottomSheet() {
  final AddScreenController addScreenController = Get.find();
  return Get.bottomSheet(
    Container(
      height: Get.height * 0.4,
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.camera_alt_outlined,
                color: Colors.black, size: 30.0),
            title: const Text(
              'Take photo',
              style: TextStyle(color: Colors.black, fontSize: 22.0),
            ),
            onTap: () {
              addScreenController.captureImage();
              Get.back();
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_outlined,
                color: Colors.black, size: 30.0),
            title: const Text(
              'Add image',
              style: TextStyle(color: Colors.black, fontSize: 22.0),
            ),
            onTap: () {
              addScreenController.galleryImages();
              Get.back();
            },
          ),
          ListTile(
            leading: const Icon(Icons.brush_outlined,
                color: Colors.black, size: 30.0),
            title: const Text(
              'Drawing',
              style: TextStyle(color: Colors.black, fontSize: 22.0),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.mic_none_outlined,
                color: Colors.black, size: 30.0),
            title: const Text(
              'Recording',
              style: TextStyle(color: Colors.black, fontSize: 22.0),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.check_box_outlined,
                color: Colors.black, size: 30.0),
            title: const Text(
              'Checkboxes',
              style: TextStyle(color: Colors.black, fontSize: 22.0),
            ),
            onTap: () {},
          ),
        ],
      ),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
}
