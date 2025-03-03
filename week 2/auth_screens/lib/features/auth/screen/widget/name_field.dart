import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: MyColors.lightGrey, borderRadius: BorderRadius.circular(12)),
        child: const TextField(
            decoration: InputDecoration(
          hintText: 'Name',
          hintStyle: MyTextStyles.grey16pxW400,
          prefixIcon: Icon(
            Icons.person_outline,
            color: MyColors.grey,
            size: 28,
          ),
          border: InputBorder.none,
        )),
      ),
    );
  }
}
