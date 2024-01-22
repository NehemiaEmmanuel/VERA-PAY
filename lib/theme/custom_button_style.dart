import 'dart:ui';
import 'package:nehemia_s_application11/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillCyan => ElevatedButton.styleFrom(
        backgroundColor: appTheme.cyan400.withOpacity(0.42),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.h),
        ),
      );
  static ButtonStyle get fillCyanTL30 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.cyan400.withOpacity(0.75),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.h),
        ),
      );
  static ButtonStyle get fillCyan1 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.cyan400.withOpacity(0.75),
      );
  static ButtonStyle get fillGrayBf => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray400Bf01,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  static ButtonStyle get fillGrayBfTL29 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray400Bf,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.h),
        ),
      );
  static ButtonStyle get fillGrayE => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray50E5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
