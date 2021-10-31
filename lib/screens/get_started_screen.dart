import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset('assets/images/getStarted.png',
            height: Get.height * 0.8, width: Get.width * 0.6),
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Capture anything',
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Text(
          'Make lists, take photos, speak your mind- whatever works for you, works in Keep.',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
            
          ),
          onPressed: () {},
          child: const Text(
            'Get Started',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
