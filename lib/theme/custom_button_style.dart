// ignore_for_file: unnecessary_import

import 'dart:ui';
import 'package:rabelgaming/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientOnErrorToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(5.h),
        border: Border.all(
          color: appTheme.whiteA700.withOpacity(0.4),
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(-0.01, 0),
          end: Alignment(1.0, 0),
          colors: [
            theme.colorScheme.onError,
            theme.colorScheme.primary,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
