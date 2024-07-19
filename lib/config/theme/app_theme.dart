import 'package:flutter/material.dart';

// Color personalizado
const Color _customColor = Color(0xFF6E39B8);

class AppTheme {
  final bool isDark;

  AppTheme({required this.isDark});

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true, // Permite usar Material 3
      colorSchemeSeed: _customColor, // Color principal de la aplicación
      brightness: isDark ? Brightness.dark : Brightness.light,
    );
  }
}

