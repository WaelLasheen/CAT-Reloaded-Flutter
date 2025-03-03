import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:auth_screens/core/widgets/custom_bottom.dart';
import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:auth_screens/features/Language/screen/widgets/select_language.dart';
import 'package:auth_screens/features/role/screen/role_screen.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'choose your language',
              style: MyTextStyles.black24pxW700,
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SelectLanguage(),
                const SizedBox(height: 20),
                const Text(
                  'you can change it later from settings',
                  style: MyTextStyles.grey16pxW400,
                ),
                const SizedBox(height: 140),
                CustomBottom(
                  color: MyColors.blue,
                  text: 'continue',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RoleScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
