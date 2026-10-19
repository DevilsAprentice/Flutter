import 'package:flutter/material.dart';
import 'package:test_app/controllers/list_makanan_controler.dart';
import 'package:get/get.dart';
import 'package:test_app/pages/detail_list_makanan.dart';
import 'package:test_app/routes.dart';


class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return InkWell(
              onTap: () {
                Get.toNamed(
                  Routes.detailMakanan,
                  arguments: makanan,
                );
              },
              child: ListTile(
                title: Text(makanan.namaMakanan),
                subtitle: Text(makanan.harga),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          },
        ),
      ),
    );
  }
}