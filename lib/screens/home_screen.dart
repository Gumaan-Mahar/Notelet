import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notelet/controllers/home_screen_controller.dart';
import 'package:notelet/screens/add_note_screen/add_note_screen.dart';
import 'package:notelet/widgets/custom_app_bar.dart';
import 'package:notelet/widgets/bottom_navigation_bar.dart';
import 'package:notelet/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeScreenController homeScreenController =
        Get.put(HomeScreenController());

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            //notes
            ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Text(index.toString());
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAppBar(
                  title: 'Search your notes',
                  isHomeScreen: true,
                  firstIcon: GestureDetector(
                    onTap: () {
                      homeScreenController.isGridView.value =
                          !homeScreenController.isGridView.value;
                    },
                    child: Obx(() => Icon(
                        homeScreenController.isGridView.value
                            ? Icons.grid_view
                            : Icons.view_agenda_outlined,
                        color: Colors.grey.shade600,
                        size: 30.0)),
                  ),
                  secondIcon: const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/circleAvatar.jpg'),
                    radius: 18.0,
                  ),
                ),
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
    );
  }
}

class CustomFab extends StatelessWidget {
  const CustomFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const AddNoteScreen()),
      child: Container(
        child: const Icon(Icons.add),
        height: Get.height * 0.09,
        width: Get.width * 0.18,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
