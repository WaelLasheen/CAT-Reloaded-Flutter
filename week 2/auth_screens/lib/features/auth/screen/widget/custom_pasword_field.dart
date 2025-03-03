import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  final String hint;

  const CustomPasswordField({super.key, required this.hint});

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: MyColors.lightGrey, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: TextField(
            obscureText: hide,
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: MyTextStyles.grey16pxW400,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    hide = !hide;
                  });
                },
                child: Icon(
                  hide ? Icons.visibility_off : Icons.visibility,
                  color: hide ? MyColors.grey : MyColors.blue,
                ),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
