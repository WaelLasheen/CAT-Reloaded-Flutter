import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:auth_screens/core/utils/my_icons.dart';
import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: MyColors.lightGrey,
          borderRadius: BorderRadius.circular(12)
      ),
      child: const TextField(
          decoration: InputDecoration(
        hintText: 'Phone Number',
        hintStyle: MyTextStyles.grey16pxW400,
        prefixIcon: Image(image: Svg(MyIcons.callIcon)),
        border: InputBorder.none,
      )),
    );
  }
}
