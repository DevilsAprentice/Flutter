import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:test_app/menu/history_page.dart';
import 'package:test_app/menu/home_page.dart';
import 'package:test_app/menu/profile_page.dart';

class MainMenuController extends GetxController {
   
   final RxInt selectedIndex = 1.obs;

   void changePage(int index) {
     selectedIndex.value = index;
   }

   List <Widget> listpage = [HomePage(), HistoryPage(), ProfilePage()];
} 