import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String email;
  late String jenisKelamin;
  late String noWa;
  late String alamat;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    nama = arguments['name'];
    email = arguments['email'];
    jenisKelamin = arguments['jenis_kelamin'];
    noWa = arguments['no_wa'];
    alamat = arguments['alamat'];
  }
}