import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:flutter/material.dart';

class RoleField extends StatelessWidget {
  final String image;
  final String text;
  final bool isSelected;
  const RoleField({super.key, required this.image, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: isSelected ? MyColors.blue : MyColors.lightGrey),
        color: MyColors.lightGrey,
      ),
      child: Column(
        children: [
          Image.asset(image,
            width: MediaQuery.of(context).size.width * .3,
            height: MediaQuery.of(context).size.width * .3,
          ),
          const SizedBox(width: 12),
          Text(text,style: MyTextStyles.black16pxW700,),
        ],
      ),
    );
  }
}