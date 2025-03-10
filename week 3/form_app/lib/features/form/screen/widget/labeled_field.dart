import 'package:flutter/material.dart';

class LabeledField extends StatelessWidget {
  final String tag;
  final String hint;
  const LabeledField({super.key, required this.tag, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            tag,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          margin: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: .5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.normal),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '$tag is required.';
              }
              if (!value.contains(RegExp(r'^[a-zA-Z]+$'))) {
                return '$tag must be alphabetic.';
              }
              return null;
            },
          ),
        )
      ],
    );
  }
}
