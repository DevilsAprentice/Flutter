
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/component/custom_button.dart';
import '../Routes.dart';
import '../component/custom_textfield.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();

    String jenisKelamin = "Laki-laki";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
        
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            CustomTextfield(
              myHint: "Input nama",
              txtController: txtNama,
              radius: 10,
            ),

            const SizedBox(height: 10),

            CustomTextfield(
              myHint: "Input email",
              txtController: txtEmail,
              radius: 10,
            ),

            const SizedBox(height: 10),

            CustomTextfield(
              myHint: "Input no. WhatsApp",
              txtController: txtNoWa,
              radius: 10,
            ),

            const SizedBox(height: 10),

            CustomTextfield(
              myHint: "Input alamat",
              txtController: txtAlamat,
              radius: 10,
            ),

            const SizedBox(height: 10),

            DropdownButtonFormField<String>(
              value: jenisKelamin,
              decoration: const InputDecoration(
                labelText: "Jenis Kelamin",
              ),
              items: const [
                DropdownMenuItem(
                  value: "Laki-laki",
                  child: Text("Laki-laki"),
                ),
                DropdownMenuItem(
                  value: "Perempuan",
                  child: Text("Perempuan"),
                ),
              ],
              onChanged: (value) {
                jenisKelamin = value!;
              },
            ),

            const SizedBox(height: 20),

            CustomButton(
              onPressed: () {
                Get.toNamed(
                  Routes.confirmRegistration,
                  arguments: {
                    'name': txtNama.text,
                    'email': txtEmail.text,
                    'jenis_kelamin': jenisKelamin,
                    'no_wa': txtNoWa.text,
                    'alamat': txtAlamat.text,
                  },
                );
              },
              text: 'Send',
            ),
          ],
        ),
      ),
    );
  }
}

