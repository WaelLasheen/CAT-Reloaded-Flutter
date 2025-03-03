import 'package:auth_screens/core/utils/my_icons.dart';
import 'package:auth_screens/features/Language/screen/widgets/language_field.dart';
import 'package:flutter/material.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  bool isEnglishSelected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isEnglishSelected = true;
            });
          },
            child: LanguageField(
          language: 'English',
          countryIcon: MyIcons.americanFlag,
          isSelected: isEnglishSelected,
        ),
      ),
      InkWell(
        onTap: () {
          setState(() {
            isEnglishSelected = false;
          });
        },
        child: LanguageField(
          language: 'العربية',
          countryIcon: MyIcons.egyptFlag,
          isSelected: !isEnglishSelected,
        ),
      ),
      ],
    );
  }
}