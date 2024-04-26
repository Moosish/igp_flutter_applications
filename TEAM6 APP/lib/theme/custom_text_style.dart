import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.35),
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 13.fSize,
      );
// Display text style
  static get displayMediumOnErrorContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 45.fSize,
      );
  static get displayMediumRegular => theme.textTheme.displayMedium!.copyWith(
        fontSize: 41.fSize,
        fontWeight: FontWeight.w400,
      );
  static get displayMediumRegular48 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 48.fSize,
        fontWeight: FontWeight.w400,
      );
// Headline text style
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w400,
      );
// Title text style
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90017 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static get titleMediumBlack900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900SemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.24),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900SemiBold_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.38),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900SemiBold_3 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.32),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w800,
      );
}
