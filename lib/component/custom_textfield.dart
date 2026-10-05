import 'package:flutter/material.dart';


class CustomTextfield extends StatelessWidget {

  final String myHint;
  final TextEditingController txtController;
  final double radius;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    required this.radius,
  }); 


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: TextInputType.number, 
      inputFormatters: [

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