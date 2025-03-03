import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:auth_screens/core/widgets/custom_bottom.dart';
import 'package:auth_screens/core/widgets/custom_text_bottom_with_prefix_text.dart';
import 'package:auth_screens/features/auth/screen/widget/custom_pasword_field.dart';
import 'package:auth_screens/features/auth/screen/widget/name_field.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Create Your Account',
                style: MyTextStyles.black24pxW700,
              ),
              const SizedBox(height: 20),
              const Text(
                'Join the community of designers\n and clients.',
                style: MyTextStyles.grey16pxW400,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const NameField(),
              const CustomPasswordField(hint: 'Password'),
              const CustomPasswordField(hint: 'Confirm Password'),

              const SizedBox(height: 60),
              CustomBottom(onPressed: (){}, color: MyColors.blue, text: 'Create Account'),
              CustomTextBottomWithPrefixText(
                prefixText: 'Already have an account? ',
                onPressed: () {},
                textBottomText: 'Log In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}