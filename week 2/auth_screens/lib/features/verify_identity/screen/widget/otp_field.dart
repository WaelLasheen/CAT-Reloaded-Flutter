import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPField extends StatelessWidget {
  const OTPField({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 4,
      cursorColor: MyColors.blue,
      fillColor: MyColors.lightGrey,
      filled: true,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      keyboardType: TextInputType.number,
      borderColor: MyColors.blue,
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      // onSubmit: (String verificationCode) {
      //   showDialog(
      //     context: context,
      //     builder: (context) {
      //       return AlertDialog(
      //         title: const Text("Verification Code"),
      //         content: Text('Code entered is $verificationCode'),
      //       );
      //     },
      //   );
      // }, // end onSubmit
    );
  }
}
