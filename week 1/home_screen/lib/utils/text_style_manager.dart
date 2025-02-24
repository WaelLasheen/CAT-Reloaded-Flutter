import 'package:flutter/material.dart';
import 'package:home_screen/utils/color_manager.dart';

abstract class TextStyleManager {
  static TextStyle normalBlackW500Size10 = const TextStyle(
      fontWeight: FontWeight.w500, fontSize: 10, color: ColorManager.black);

  static TextStyle normalAlexandriaDeepBlackW500Size12 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: ColorManager.deepBlack,
      fontFamily: 'Alexandria');

  static TextStyle boldAlexandriaDeepBlackW500Size18 = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: ColorManager.deepBlack,
      fontFamily: 'Alexandria');
}
