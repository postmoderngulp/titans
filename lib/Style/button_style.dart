import 'package:flutter/material.dart';
import 'package:titans/Style/colors.dart';

abstract class StyleButton {
  static ButtonStyle next = ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(colors.main),
      elevation: const MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))));
  static ButtonStyle cancelButton = ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(colors.grey),
      elevation: const MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))));
  static ButtonStyle service = ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(Colors.white),
      elevation: const MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))));
  static ButtonStyle banner = ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(colors.labelGrey),
      elevation: const MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))));
  static ButtonStyle activeRegister = ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(colors.background),
      elevation: const MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));
  static ButtonStyle inActiveRegister = ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(colors.darkBack),
      elevation: const MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));
}
