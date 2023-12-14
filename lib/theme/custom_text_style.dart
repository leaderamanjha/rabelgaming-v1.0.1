import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBungeeWhiteA700 =>
      theme.textTheme.bodyMedium!.bungee.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.49),
      );
  // Title text style
  static get titleSmallDeeporangeA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA200,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.6),
      );
}

extension on TextStyle {
  // ignore: unused_element
  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get bungee {
    return copyWith(
      fontFamily: 'Bungee',
    );
  }
}
