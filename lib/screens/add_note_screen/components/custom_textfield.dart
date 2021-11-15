
import 'package:flutter/material.dart';

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