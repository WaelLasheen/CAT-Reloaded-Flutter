import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:auth_screens/core/widgets/custom_bottom.dart';
import 'package:auth_screens/core/widgets/custom_text_bottom_with_prefix_text.dart';
import 'package:auth_screens/features/phone_login/screen/widget/phone_field.dart';
import 'package:auth_screens/features/verify_identity/screen/verify_identity.dart';
import 'package:flutter/material.dart';

class PhoneLogin extends StatelessWidget {
  const PhoneLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
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
              const SizedBox(height: 30),
              const PhoneField(),
              const SizedBox(height: 80),
              CustomBottom(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VerifyIdentity(),
                    ),
                  );
                },
                color: MyColors.blue,
                text: 'send OTP',
              ),
              const SizedBox(height: 20),
              CustomTextBottomWithPrefixText(
                prefixText: 'Already have an account?',
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