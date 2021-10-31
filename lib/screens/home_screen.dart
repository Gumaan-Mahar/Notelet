import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notelet/screens/add_note_screen.dart';
import 'package:notelet/widgets/app_bar.dart';
import 'package:notelet/widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: CustomAppBar(),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
        // drawer: ,
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo.shade50,
          foregroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          onPressed: () {
            Get.to(
              () => const AddNoteScreen(),
            );
          },
          child: const Icon(
            Icons.add,
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
