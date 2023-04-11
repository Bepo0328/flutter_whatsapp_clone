import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/utils/utils.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: blackColor),
      ),
      style: ElevatedButton.styleFrom(
        primary: tabColor,
        minimumSize: const Size(double.infinity, 50),
      ),
    );
  }
}
