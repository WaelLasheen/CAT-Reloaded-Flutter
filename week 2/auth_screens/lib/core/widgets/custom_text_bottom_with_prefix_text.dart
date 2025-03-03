import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextBottomWithPrefixText extends StatelessWidget {
  final String prefixText;
  final String textBottomText;
  final VoidCallback onPressed;
  const CustomTextBottomWithPrefixText(
      {super.key,
      required this.prefixText,
      required this.onPressed,
      required this.textBottomText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(prefixText, style: MyTextStyles.grey16pxW400),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: Text(
            textBottomText,
            style: MyTextStyles.blue16pxW500,
          ),
        ),
      ],
    );
  }
}
