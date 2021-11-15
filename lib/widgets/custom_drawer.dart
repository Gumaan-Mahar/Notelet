import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:notelet/constants.dart';
import 'package:notelet/controllers/home_screen_controller.dart';
import 'package:notelet/screens/home_screen.dart';
import 'package:notelet/screens/reminders_screen.dart';
import 'package:simple_drawer/simple_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.homeScreenController,
  }) : super(key: key);

  final HomeScreenController homeScreenController;

  @override
  Widget build(BuildContext context) {
    return SimpleDrawer(
      direction: Direction.left,
      id: 'left',
      childWidth: Get.width * 0.8,
      childHeight: Get.height,
      child: Container(
          width: Get.width * 0.8,
          height: Get.height,
          color: Colors.white,
          child: DrawerMenu(homeScreenController: homeScreenController)),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key? key,
    required this.homeScreenController,
  }) : super(key: key);

  final HomeScreenController homeScreenController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 28.0, bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/images/google.svg',
                width: 120.0,
                alignment: Alignment.topLeft,
              ),
              Text(
                'Keep',
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0),
              ),
            ],
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      if (index == homeScreenController.selectedIndex.value) {
                        SimpleDrawer.deactivate('left');
                      } else {
                        homeScreenController.selectedIndex.value = index;

                        Get.to(
                          () => const HomeScreen(),
                        );
                        SimpleDrawer.deactivate('left');
                      }

                      break;
                    case 1:
                      if (index == homeScreenController.selectedIndex.value) {
                        SimpleDrawer.deactivate('left');
                      } else {
                        homeScreenController.selectedIndex.value = index;

                        Get.to(
                          () => const RemindersScreen(),
                        );
                        SimpleDrawer.deactivate('left');
                      }

                      break;
                    case 2:
                      homeScreenController.selectedIndex.value = index;
                      () {};
                      break;
                    case 3:
                      homeScreenController.selectedIndex.value = index;
                      () {};
                      break;
                    case 4:
                      homeScreenController.selectedIndex.value = index;
                      () {};
                      break;
                    case 5:
                      homeScreenController.selectedIndex.value = index;
                      () {};
                      break;
                    case 6:
                      homeScreenController.selectedIndex.value = index;
                      () {};
                      break;
                    case 7:
                      homeScreenController.selectedIndex.value = index;
                      () {};
                      break;
                    default:
                  }
                },
                child: Obx(() => Container(
                      height: Get.height * 0.08,
                      padding: EdgeInsets.only(left: Get.width * 0.09),
                      margin: const EdgeInsets.only(bottom: 8.0, right: 10.0),
                      decoration: BoxDecoration(
                        color: index == homeScreenController.selectedIndex.value
                            ? customGrey
                            : Colors.transparent,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(60.0),
                          bottomRight: Radius.circular(
                            60.0,
                          ),
                        ),
                      ),
                      child: Row(children: [
                        Icon(
                          homeScreenController.drawerItems[index]['iconData'],
                          color:
                              index == homeScreenController.selectedIndex.value
                                  ? Colors.blue
                                  : Colors.black,
                          size: 32.0,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          homeScreenController.drawerItems[index]['text'],
                          style: TextStyle(
                              color: index ==
                                      homeScreenController.selectedIndex.value
                                  ? Colors.blue
                                  : Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                    )),
              );
            },
          ),
        ),
      ],
    );
  }
}
