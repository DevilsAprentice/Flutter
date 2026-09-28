import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 14,
        ),

        minimumSize: const Size(60, 50),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),

        elevation: 4,
      ),

      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}