
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controllers/confrim_regist_controler.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
      ConfirmRegistrationController(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration information"),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama: ${controller.nama}",
              style: const TextStyle(fontSize: 18),
              
            ),

            const SizedBox(height: 10),

            Text(
              "Email: ${controller.email}",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              "Jenis Kelamin: ${controller.jenisKelamin}",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              "No. WhatsApp: ${controller.noWa}",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              "Alamat: ${controller.alamat}",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Oke"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
