import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class LanguageField extends StatelessWidget {
  final String language;
  final String countryIcon;
  final bool isSelected;
  const LanguageField({super.key, required this.language, required this.countryIcon, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: isSelected ? MyColors.blue : MyColors.lightGrey),
        color: MyColors.lightGrey,
      ),
      child: Row(
        children: [
          Image(image: Svg(countryIcon)),
          const SizedBox(width: 12),
          Text(language,style: MyTextStyles.black16pxW700,),
        ],
      ),
    );
  }
}