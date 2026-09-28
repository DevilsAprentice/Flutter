import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // 1. Wajib di-import untuk FilteringTextInputFormatter

class CustomTextfield extends StatelessWidget {

  final String myHint;
  final TextEditingController txtController;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: TextInputType.number, 
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, 
      ],
      decoration: InputDecoration(
        hintText: myHint, 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}