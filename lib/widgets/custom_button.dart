import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback onPressed;

  const CustomButton(
      {Key? key,
      required this.height,
      required this.width,
      required this.text,
      this.textColor = Colors.white,
      required this.onPressed,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
