import 'package:flutter/material.dart';
import 'package:notelet/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: screenHeight * 0.1,
        color: lightIndigo,
        child: Row(children: <Widget>[
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
        ]),
      ),
    );
  }
}

class CustomPaintNotch extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.white;

    // Offset center = Offset(size.width / 2, 0);
    // As a notch, RRect will be drawn with offset
    // With ClipRect used, paint outside the area won't be rendered
    RRect roundRectangle = RRect.fromRectAndRadius(
        const Rect.fromLTRB(55.0, 100.0, 25.0, 100.0),
        const Radius.circular(20.0));
    canvas.drawRRect(roundRectangle, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
