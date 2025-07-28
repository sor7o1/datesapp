import 'package:flutter/material.dart';

class CustomThemes {
  // --- PALETA OSCURA ---
  static final ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: const Color(0xFFC0191F), // rojo principal
    onPrimary: Colors.white,
    primaryContainer: const Color(0xFF7D1416), // rojo profundo
    onPrimaryContainer: Colors.white70,
    secondary: const Color(0xFF4D474F), // gris morado neutro
    onSecondary: Colors.white70,
    secondaryContainer: const Color(0xFF4D474F).withOpacity(0.8),
    onSecondaryContainer: Colors.white60,
    background: const Color(0xFF282F32), // fondo gris-azulado oscuro
    onBackground: Colors.white70,
    surface: const Color(0xFF371211), // casi negro rojizo
    onSurface: Colors.white70,
    error: const Color(0xFFE51E1B), // rojo vivo error
    onError: Colors.white,
    outline: Colors.grey.shade600,
    shadow: Colors.black.withOpacity(0.8),
    inverseSurface: Colors.grey.shade100,
    onInverseSurface: Colors.black87,
    inversePrimary: const Color(0xFFC0191F),
  );

  // --- PALETA CLARA ---
  static final ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: const Color(0xFFC0191F), // mismo rojo principal
    onPrimary: Colors.white,
    primaryContainer: const Color(
      0xFFF5C6C6,
    ), // rojo claro suave para contenedor
    onPrimaryContainer: const Color(0xFF7D1416), // rojo profundo para texto
    secondary: const Color(0xFF6E6877), // gris morado claro para secundarios
    onSecondary: Colors.white,
    secondaryContainer: const Color(0xFFEAE6EF),
    onSecondaryContainer: const Color(0xFF4D474F),
    background: const Color(0xFFF8F8F8), // fondo claro
    onBackground: Colors.black87,
    surface: Colors.white,
    onSurface: Colors.black87,
    error: const Color(0xFFE51E1B),
    onError: Colors.white,
    outline: Colors.grey.shade400,
    shadow: Colors.black.withOpacity(0.15),
    inverseSurface: Colors.grey.shade900,
    onInverseSurface: Colors.white,
    inversePrimary: const Color(0xFFC0191F),
  );

  // --- TEMA OSCURO ---
  static final ThemeData darkTheme = ThemeData(
    colorScheme: darkColorScheme,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkColorScheme.background,
    canvasColor: darkColorScheme.background,
    appBarTheme: AppBarTheme(
      backgroundColor: darkColorScheme.surface,
      foregroundColor: darkColorScheme.onSurface,
      elevation: 3,
      iconTheme: IconThemeData(color: darkColorScheme.onSurface),
      titleTextStyle: TextStyle(
        color: darkColorScheme.onSurface,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardColor: darkColorScheme.surface,
    focusColor: Colors.white.withOpacity(0.12),
    highlightColor: Colors.transparent,
    splashColor: darkColorScheme.primary.withOpacity(0.15),
    shadowColor: darkColorScheme.shadow,
    textTheme: Typography.whiteMountainView.apply(
      bodyColor: darkColorScheme.onBackground,
      displayColor: darkColorScheme.onBackground,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkColorScheme.primary,
        foregroundColor: darkColorScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 4,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: darkColorScheme.secondary,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: darkColorScheme.primaryContainer,
        side: BorderSide(color: darkColorScheme.primaryContainer),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: darkColorScheme.surface.withOpacity(0.8),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: darkColorScheme.primary),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: darkColorScheme.outline),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: darkColorScheme.error),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: darkColorScheme.error),
        borderRadius: BorderRadius.circular(8),
      ),
      labelStyle: TextStyle(color: darkColorScheme.onSurface.withOpacity(0.8)),
      hintStyle: TextStyle(color: darkColorScheme.onSurface.withOpacity(0.6)),
    ),
    iconTheme: IconThemeData(color: darkColorScheme.primary),
  );

  // --- TEMA CLARO ---
  static final ThemeData lightTheme = ThemeData(
    colorScheme: lightColorScheme,
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightColorScheme.background,
    canvasColor: lightColorScheme.background,
    appBarTheme: AppBarTheme(
      backgroundColor: lightColorScheme.surface,
      foregroundColor: lightColorScheme.onSurface,
      elevation: 3,
      iconTheme: IconThemeData(color: lightColorScheme.onSurface),
      titleTextStyle: TextStyle(
        color: lightColorScheme.onSurface,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardColor: lightColorScheme.surface,
    focusColor: Colors.black.withOpacity(0.12),
    highlightColor: Colors.transparent,
    splashColor: lightColorScheme.primary.withOpacity(0.15),
    shadowColor: lightColorScheme.shadow,
    textTheme: Typography.blackMountainView.apply(
      bodyColor: lightColorScheme.onBackground,
      displayColor: lightColorScheme.onBackground,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightColorScheme.primary,
        foregroundColor: lightColorScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 4,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: lightColorScheme.secondary,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: lightColorScheme.primaryContainer,
        side: BorderSide(color: lightColorScheme.primaryContainer),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: lightColorScheme.surface,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: lightColorScheme.primary),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: lightColorScheme.outline),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: lightColorScheme.error),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: lightColorScheme.error),
        borderRadius: BorderRadius.circular(8),
      ),
      labelStyle: TextStyle(color: lightColorScheme.onSurface.withOpacity(0.8)),
      hintStyle: TextStyle(color: lightColorScheme.onSurface.withOpacity(0.6)),
    ),
    iconTheme: IconThemeData(color: lightColorScheme.primary),
  );
}
