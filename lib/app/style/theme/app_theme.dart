import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore_for_file: lines_longer_than_80_chars, no-magic-number

/// AppTheme Singleton class
class AppTheme {
  factory AppTheme() => _internalSingleton;
  AppTheme._internal();
  static final AppTheme _internalSingleton = AppTheme._internal();

  /// *---* [Light Theme] *---*
  static ThemeData lightThemeData() {
    return FlexThemeData.light(
      scheme: FlexScheme.blue,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 9,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 10,
        blendOnColors: false,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      fontFamily: GoogleFonts.montserrat().fontFamily,
    );
  }

  /// darkThemeData
  static ThemeData darkThemeData() {
    return FlexThemeData.dark(
      scheme: FlexScheme.blue,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 15,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 20,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      fontFamily: GoogleFonts.montserrat().fontFamily,
    );
  }
}
