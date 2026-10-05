
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/Routes.dart';
import 'calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return GetMaterialApp(
      title: "Belajar Flutter PPLG 3",
      initialRoute: Routes.registration,
      getPages: Routes.myPages,
    );
  }
}

