import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String text;
  const CustomBottom(
      {super.key, required this.onPressed, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(text, style: MyTextStyles.white16pxW600,),
      ),
    );
  }
}
