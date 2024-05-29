import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:fe/src/shared/theme/text_theme.dart';

ThemeData mainTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'nanumSquare',
  textTheme: textTheme,
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    primary: ColorTheme.primaryColor,
    onPrimary: ColorTheme.primaryColor,
    primaryContainer: ColorTheme.primaryColor,
    onPrimaryContainer: ColorTheme.primaryColor[50],
    secondary: ColorTheme.secondaryColor,
    onSecondary: ColorTheme.secondaryColor,
    secondaryContainer: ColorTheme.secondaryColor,
    onSecondaryContainer: ColorTheme.secondaryColor[50],
    error: ColorTheme.error.tone(40),
    onError: ColorTheme.error.tone(100),
    errorContainer: ColorTheme.error.tone(90),
    onErrorContainer: ColorTheme.error.tone(10),
    background: ColorTheme.slateColor[50]!,
    onBackground: ColorTheme.slateColor[50]!,
    surface: ColorTheme.slateColor[100]!,
    onSurface: ColorTheme.slateColor[100]!,
    outline: ColorTheme.slateColor,
    outlineVariant: ColorTheme.slateColor,
    shadow: ColorTheme.shadow,
    surfaceTint: ColorTheme.slateColor[100]!,
    surfaceVariant: ColorTheme.slateColor[100]!,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: false,
    scrolledUnderElevation: 0,
  ),
  splashFactory: InkSparkle.splashFactory,
);

ThemeData mainThemeByLocale(Locale locale) {
  // 영어일 경우 플랫폼에 따라 폰트 패밀리 변경
  if (locale.languageCode == 'en') {
    final fontFamily = Platform.isIOS ? 'SanFranciscoPro' : 'Roboto';

    // 기본 폰트 무게
    FontWeight baseWeight = FontWeight.w500;
    FontWeight boldWeight = FontWeight.w600; // 진한 텍스트에 사용할 폰트 무게

    // 폰트 패밀리 및 폰트 무게를 적용한 새로운 TextTheme 생성
    TextTheme updatedTextTheme = textTheme
        .apply(
          fontFamily: fontFamily,
        )
        .copyWith(
          titleLarge: textTheme.titleLarge?.copyWith(fontWeight: boldWeight),
          titleMedium: textTheme.titleMedium?.copyWith(fontWeight: boldWeight),
          titleSmall: textTheme.titleSmall?.copyWith(fontWeight: boldWeight),
          headlineLarge:
              textTheme.headlineLarge?.copyWith(fontWeight: boldWeight),
          headlineMedium:
              textTheme.headlineMedium?.copyWith(fontWeight: boldWeight),
          headlineSmall:
              textTheme.headlineSmall?.copyWith(fontWeight: boldWeight),
          displayMedium:
              textTheme.displayMedium?.copyWith(fontWeight: boldWeight),
          displaySmall:
              textTheme.displaySmall?.copyWith(fontWeight: boldWeight),
          bodyLarge: textTheme.bodyLarge?.copyWith(fontWeight: baseWeight),
          bodyMedium: textTheme.bodyMedium?.copyWith(fontWeight: baseWeight),
          bodySmall: textTheme.bodySmall?.copyWith(fontWeight: baseWeight),
          labelMedium: textTheme.labelMedium?.copyWith(fontWeight: baseWeight),
          labelSmall: textTheme.labelSmall?.copyWith(fontWeight: baseWeight),
        );

    // 폰트 패밀리와 업데이트된 TextTheme을 적용한 새로운 ThemeData 반환
    return mainTheme.copyWith(
      textTheme: updatedTextTheme,
    );
  } else {
    return mainTheme;
  }
}
