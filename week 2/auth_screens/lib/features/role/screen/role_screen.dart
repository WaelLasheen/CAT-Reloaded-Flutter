import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:auth_screens/core/widgets/custom_bottom.dart';
import 'package:auth_screens/features/phone_login/screen/phone_login.dart';
import 'package:auth_screens/features/role/screen/widgets/select_role.dart';
import 'package:flutter/material.dart';

class RoleScreen extends StatelessWidget {
  const RoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'choose your role',
          style: MyTextStyles.black24pxW700,
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Let us know how you'll be using\n the platform.",
              textAlign: TextAlign.center,
              style: MyTextStyles.grey16pxW400,
            ),

            const SizedBox(height: 60),
            const SelectRole(),
            const SizedBox(height: 100),
            CustomBottom(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PhoneLogin()));
            }, color: MyColors.blue, text: 'continue'),
          ],
        ),
      ),
    );
  }
}