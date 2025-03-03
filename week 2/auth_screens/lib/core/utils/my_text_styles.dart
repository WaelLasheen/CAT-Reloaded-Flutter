import 'package:auth_screens/core/utils/my_colors.dart';
import 'package:flutter/material.dart';

abstract class MyTextStyles{

  static const TextStyle black24pxW700 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: MyColors.black,
  );

  static const TextStyle black16pxW700 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: MyColors.black,
  );
   
  static const TextStyle white16pxW600 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    letterSpacing: 1.5,
  );

  static const TextStyle grey16pxW400 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: MyColors.grey,
  );

  static const TextStyle blue16pxW500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: MyColors.blue,
  );
}