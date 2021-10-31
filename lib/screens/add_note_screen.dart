import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
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
      
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: const [
                CustomTextField(helpText: 'Title'),
                CustomTextField(
                  helpText: 'Note',
                  textSize: 21.0,
                ),
              ],
            ),
          ),
          const AddScreenNavigationBar(),
        ],
      ),
    );
  }
}

class AddScreenNavigationBar extends StatelessWidget {
  const AddScreenNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          color: Colors.black,
          iconSize: 30.0,
          onPressed: () {},
          icon: const Icon(Icons.add_box_outlined),
        ),
        Padding(
          padding:
              EdgeInsets.only(right: Get.width * 0.1, left: Get.width * 0.02),
          child: IconButton(
            color: Colors.black,
            iconSize: 30.0,
            onPressed: () {},
            icon: const Icon(Icons.palette_outlined),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: Get.width * 0.205),
          child: const Text(
            'Edited 4:14 PM',
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
        ),
        IconButton(
          color: Colors.black,
          iconSize: 30.0,
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String helpText;
  final double textSize;
  const CustomTextField({
    Key? key,
    required this.helpText,
    this.textSize = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      autofocus: true,
      maxLines: null,
      style: TextStyle(
        fontSize: textSize,
        fontWeight: FontWeight.w400,
      ),
      strutStyle: const StrutStyle(
        height: 1.4,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: helpText,
        contentPadding: const EdgeInsets.only(top: 8.0),
        hintStyle: TextStyle(
          fontSize: 24.0,
          color: Colors.grey.shade400,
        ),
      ),
      cursorColor: Colors.black,
      cursorHeight: 33.0,
      cursorWidth: 1.8,
    );
  }
}
