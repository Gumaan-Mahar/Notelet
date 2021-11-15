import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:notelet/controllers/home_screen_controller.dart';
import 'package:notelet/controllers/reminders_screen_controller.dart';
// import 'package:notelet/controllers/reminders_screen_controller.dart';
import 'package:notelet/screens/home_screen.dart';
import 'package:notelet/widgets/custom_app_bar.dart';
import 'package:notelet/widgets/bottom_navigation_bar.dart';
import 'package:notelet/widgets/custom_drawer.dart';
import 'package:simple_drawer/simple_drawer.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RemindersScreenController remindersScreenController =
        Get.put(RemindersScreenController());
    final HomeScreenController homeScreenController = Get.find();
    onWillPop(context) async {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      return false;
    }

    return WillPopScope(
      onWillPop: () => onWillPop(context),
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => (SimpleDrawer.activate('left')),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.orange,
                        size: Get.width * 0.4,
                      ),
                    ),
                    const Text(
                      'Notes with upcoming reminders appear here',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          letterSpacing: 0.6),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //appbar
                   CustomAppBar(title: 'Reminders', isHomeScreen: false, firstIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search,
                          color: Colors.grey.shade600, size: 30.0),
                    ), secondIcon: GestureDetector(
                      onTap: () {
                        homeScreenController.isGridView.value =
                            !homeScreenController.isGridView.value;
                      },
                      child: Obx(() => Icon(
                            homeScreenController.isGridView.value
                                ? Icons.grid_view_outlined
                                : Icons.view_agenda_outlined,
                            color: Colors.grey.shade600,
                            size: 30.0,
                          )),
                    ),),
                  //bottombar
                  Stack(
                    alignment: Alignment.topRight,
                    clipBehavior: Clip.none,
                    children: const [
                      CustomBottomNavigationBar(),
                      CustomFab(),
                    ],
                  ),
                ],
              ),
              // drawer
              CustomDrawer(homeScreenController: homeScreenController),
            ],
          ),
        ),
      ),
    );
  }
}
