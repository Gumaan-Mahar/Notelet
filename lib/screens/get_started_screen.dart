import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notelet/widgets/custom_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2d2533),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/getStarted.png',
              height: Get.height * 0.3,
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.3),
              child: Column(
                children: [
                  const Text(
                    'Capture anything',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        letterSpacing: 0.5,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'Make lists, take photos, speak your mind-\nwhatever works for you, works in Keep.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        letterSpacing: 0.3,
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.07,
                  ),
                  CustomButton(
                    height: 60,
                    width: Get.width * 0.45,
                    text: 'Get started',
                    onPressed: () {},
                    color: Colors.amber,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
