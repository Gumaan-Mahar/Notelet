import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool gridView = false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
      child: Container(
        height: screenHeight * 0.2,
        decoration: BoxDecoration(
          color: lightIndigo,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.grey.shade800,
                iconSize: 30.0,
                onPressed: () {}),
            Flexible(
              child: Text(
                'Search your notes',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20.0,
                ),
              ),
            ),
            gridView
                ? Icon(Icons.grid_view, color: Colors.grey.shade600, size: 30.0)
                : Icon(Icons.view_list,
                    color: Colors.grey.shade600, size: 30.0),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/circleAvatar.jpg'),
              radius: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
