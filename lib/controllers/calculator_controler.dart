import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  bool _isValidInput(double? angka1, double? angka2) {
    if (angka1 == null || angka2 == null) {
      Get.snackbar(
        'Pernigatan',
        'Angka 1 dan Angka 2 tidak boleh kosong atau harus berupa angka!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
      return false;
    }
    return true;
  }

  void tambah(double? angka1, double? angka2) {
    if (!_isValidInput(angka1, angka2)) return;
    hasilHitung.value = angka1! + angka2!;
  }

  void kurang(double? angka1, double? angka2) {
    if (!_isValidInput(angka1, angka2)) return;
    hasilHitung.value = angka1! - angka2!;
  }

  void kali(double? angka1, double? angka2) {
    if (!_isValidInput(angka1, angka2)) return;
    hasilHitung.value = angka1! * angka2!;
  }

  void bagi(double? angka1, double? angka2) {
    if (!_isValidInput(angka1, angka2)) return;

    // Warning jika angka 2 bernilai 0
    if (angka2 == 0) {
      Get.snackbar(
        'Peringatan',
        'Angka 2 tidak boleh 0 pada pembagian!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    hasilHitung.value = angka1! / angka2!;
  }
} 