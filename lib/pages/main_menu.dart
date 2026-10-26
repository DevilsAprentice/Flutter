import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:test_app/controllers/main_menu_controler.dart';

class MainMenuPage extends StatelessWidget {
   MainMenuPage({super.key});

  final controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
         body : IndexedStack(
          children: controller.listpage, index: controller.selectedIndex.value
          ),
          bottomNavigationBar: BottomNavigationBar (
            selectedItemColor: Colors.black,
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changePage,
            
            
            items : [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.history_outlined), label: "History"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "Profile"),
        ])

        ));
  }
}