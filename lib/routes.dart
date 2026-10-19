
import 'package:get/get.dart';
import 'package:test_app/pages/confrim_registration.dart';
import 'package:test_app/pages/detail_list_makanan.dart';
import 'package:test_app/pages/registration_page.dart';
import 'package:test_app/pages/list_makanan_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listMakanan = "/listMakanan";
  static const String detailMakanan = "/detailMakanan";

  static final myPages = [
    GetPage(
      name: registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: confirmRegistration,
      page: () => ConfirmRegistrationPage(),
    ),
    GetPage(
      name: listMakanan,
      page: () => ListMakananPage(),
    ),
     GetPage(
      name: detailMakanan,
      page: () => DetailMakananPage(),
    ),
  ];
}
