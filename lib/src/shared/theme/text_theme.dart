import 'package:flutter/material.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

TextTheme textTheme = TextTheme(
  titleLarge: const TextStyle(
    fontSize: 22,
    height: 1.45,
    fontWeight: FontWeight.w800,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  titleMedium: const TextStyle(
    fontSize: 20,
    height: 1.45,
    fontWeight: FontWeight.w800,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  titleSmall: const TextStyle(
    fontSize: 18,
    height: 1.45,
    fontWeight: FontWeight.w800,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  headlineLarge: const TextStyle(
    fontSize: 16,
    height: 1.45,
    fontWeight: FontWeight.w800,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  headlineMedium: const TextStyle(
    fontSize: 14,
    height: 1.45,
    fontWeight: FontWeight.w800,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  headlineSmall: const TextStyle(
    fontSize: 12,
    height: 1.45,
    fontWeight: FontWeight.w800,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  displayMedium: const TextStyle(
    fontSize: 15,
    height: 1.45,
    fontWeight: FontWeight.w800,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  displaySmall: const TextStyle(
    fontSize: 13,
    height: 1.45,
    fontWeight: FontWeight.w800,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  bodyLarge: const TextStyle(
    fontSize: 16,
    height: 1.45,
    fontWeight: FontWeight.w700,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  bodyMedium: const TextStyle(
    fontSize: 14,
    height: 1.45,
    fontWeight: FontWeight.w700,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  bodySmall: const TextStyle(
    fontSize: 12,
    height: 1.45,
    fontWeight: FontWeight.w700,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  labelMedium: const TextStyle(
    fontSize: 15,
    height: 1.45,
    fontWeight: FontWeight.w700,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
  labelSmall: const TextStyle(
    fontSize: 13,
    height: 1.45,
    fontWeight: FontWeight.w700,
    color: ColorTheme.slateColor,
  ).withLetterSpacing(-2),
);

extension PercentageLetterSpacing on TextStyle {
  TextStyle withLetterSpacing(double percentage) {
    double letterSpacing = double.parse(((percentage / 100) * fontSize!)
        .toStringAsFixed(2)); // toStringAsFixed(2): to two decimal places
    return copyWith(letterSpacing: letterSpacing);
  }
}
