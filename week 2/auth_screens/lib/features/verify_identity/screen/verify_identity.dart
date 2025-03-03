import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:auth_screens/core/utils/my_text_styles.dart';
import 'package:auth_screens/core/widgets/custom_bottom.dart';
import 'package:auth_screens/core/widgets/custom_text_bottom_with_prefix_text.dart';
import 'package:auth_screens/features/auth/screen/create_account.dart';
import 'package:auth_screens/features/verify_identity/screen/widget/otp_field.dart';
import 'package:flutter/material.dart';

class VerifyIdentity extends StatelessWidget {
  const VerifyIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Verify Identity'),
          centerTitle: true,
        ),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Enter the 4 -digit code sent to your phone number.',
                style: MyTextStyles.grey16pxW400,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const OTPField(),
              const SizedBox(height: 10),
              CustomTextBottomWithPrefixText(
                prefixText: 'Didn’t receive the code? ',
                onPressed: () {},
                textBottomText: 'Resend',
              ),
              const SizedBox(height: 40),
              CustomBottom(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CreateAccount(),
                      ),
                    );
                  },
                  color: MyColors.blue,
                text: 'verify',
              ),
            ],
          ),
        ),
      ),
    );
  }
}