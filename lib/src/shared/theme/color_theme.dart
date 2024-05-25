import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class ColorTheme {
  static const MaterialColor primaryColor = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFEEF4FF),
      100: Color(0xFFD9E5FF),
      200: Color(0xFFBCD2FF),
      300: Color(0xFF8EB6FF),
      400: Color(0xFF598EFF),
      500: Color(_primaryValue),
      600: Color(0xFF1B43F5),
      700: Color(0xFF142FE1),
      800: Color(0xFF1727B6),
      900: Color(0xFF19288F),
    },
  );
  static const int _primaryValue = 0xFF3366FF;

  static const MaterialColor secondaryColor = MaterialColor(
    _secondaryValue,
    <int, Color>{
      50: Color(0xFFFAF5FF),
      100: Color(0xFFF3E7FF),
      200: Color(0xFFEAD4FF),
      300: Color(0xFFD8B2FF),
      400: Color(_secondaryValue),
      500: Color(0xFFA651FB),
      600: Color(0xFF8E2EEF),
      700: Color(0xFF781ED2),
      800: Color(0xFF641EAB),
      900: Color(0xFF51198A),
    },
  );
  static const int _secondaryValue = 0xFFCC99FF;

  static const MaterialColor slateColor = MaterialColor(
    _slateValue,
    <int, Color>{
      50: Color(0xFFF8FAFC),
      100: Color(0xFFF1F5F9),
      200: Color(0xFFE2E8F0),
      300: Color(0xFFCBD5E1),
      400: Color(0xFF94A3B8),
      500: Color(0xFF64748B),
      600: Color(0xFF475569),
      700: Color(_slateValue),
      800: Color(0xFF1E293B),
      900: Color(0xFF0F172A),
    },
  );
  static const int _slateValue = 0xFF334155;

  static const Color violet = Color(0xFFDCE2F9);

  static const Color disabled = Color(0xFFA4B3CC);

  static const Color error = Color(0xFFBA1A1A);

  static const Color shadow = Color(0x1E3366FF);

  static const LinearGradient primaryGradient = LinearGradient(
      begin: Alignment(0.00, -1.00),
      end: Alignment(0, 1),
      colors: [Color(0xFFF1E9FF), Color(0xFFD2E9FF)]
  );
}

extension Material3Palette on Color {
  Color tone(int toneValue) {
    assert(toneValue >= 0 && toneValue <= 100);
    final hct = Hct.fromInt(value);
    final tonalPalette = TonalPalette.of(hct.hue, hct.chroma);
    return Color(tonalPalette.get(toneValue));
  }
}
