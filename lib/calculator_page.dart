import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:test_app/controllers/calculator_controler.dart';

import 'component/custom_button.dart';
import 'component/custom_textfield.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

 final controller = Get.put(CalculatorController());
   // menyambungkan page dan controller

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController txtA1 = TextEditingController();
  TextEditingController txtA2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Calculator'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            child:CustomTextfield (
              myHint: 'A1',
              txtController: txtA1,
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: CustomTextfield(
              myHint: 'A2',
              txtController: txtA2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                child: CustomButton(
                  onPressed: () {
                    controller.tambah(double.parse(txtA1.text), double.parse(txtA2.text));
                  },
                  text: '+',
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: CustomButton(
                  onPressed: () {
                    controller.kurang(double.parse(txtA1.text), double.parse(txtA2.text));
                  },
                  text: '-',
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: CustomButton(
                  onPressed: () {
                   controller.kali(double.parse(txtA1.text), double.parse(txtA2.text));
                  },
                  text: 'x',
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: CustomButton(
                  onPressed: () {
                    controller.bagi(double.parse(txtA1.text), double.parse(txtA2.text));
                  },
                  text: '/',
                ),
              ),
            ],
          ),
          Obx(
            () => Text(
              'Hasil: ${controller.hasilHitung.value}',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}