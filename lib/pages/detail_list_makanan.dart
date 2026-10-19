
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controllers/detail_list_makanan.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final DetailMakananController controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Makanan'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              controller.makanan.gambar,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 16),

            Text(controller.makanan.namaMakanan),

            Text('Harga: Rp ${controller.makanan.harga}'),

            Row(
              children: [
                Icon(Icons.star),
                SizedBox(width: 4),
                Text(controller.makanan.rating.toString()),
              ],
            ),

            SizedBox(height: 16),

            Text('Deskripsi'),
            Text(controller.makanan.deskripsi),

            SizedBox(height: 16),

            Text('Review'),
            Text(controller.makanan.review),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
