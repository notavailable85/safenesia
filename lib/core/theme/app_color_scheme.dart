import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppColorScheme {
  AppColorScheme._();

  // =========================================================
  // LIGHT
  // =========================================================

  static const ColorScheme light = ColorScheme(
    brightness: Brightness.light,

    // Primary
    primary: AppColors.primary,
    onPrimary: Colors.white,
    primaryContainer: Color(0xFFDDE8FF),
    onPrimaryContainer: Color(0xFF001B3F),

    // Secondary
    secondary: AppColors.secondary,
    onSecondary: Colors.white,
    secondaryContainer: Color(0xFFD7F5E3),
    onSecondaryContainer: Color(0xFF00210F),

    // Tertiary
    tertiary: AppColors.info,
    onTertiary: Colors.white,
    tertiaryContainer: Color(0xFFD8F2FF),
    onTertiaryContainer: Color(0xFF001F29),

    // Error
    error: AppColors.error,
    onError: Colors.white,
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),

    // Surface
    surface: AppColors.surface,
    onSurface: AppColors.textPrimary,

    surfaceContainerHighest: Color(0xFFF1F5F9),

    surfaceContainerHigh: Color(0xFFF8FAFC),

    surfaceContainer: Color(0xFFFFFFFF),

    // Outline
    outline: AppColors.border,
    outlineVariant: Color(0xFFE2E8F0),

    // Shadow
    shadow: Colors.black12,

    // Scrim
    scrim: Colors.black54,

    // Inverse
    inverseSurface: Color(0xFF1F2937),

    onInverseSurface: Colors.white,

    inversePrimary: Color(0xFFB6CCFF),
  );

  // =========================================================
  // DARK
  // =========================================================

  static const ColorScheme dark = ColorScheme(
    brightness: Brightness.dark,

    // Primary
    primary: AppColors.primary,
    onPrimary: Colors.white,
    primaryContainer: Color(0xFF27488F),
    onPrimaryContainer: Colors.white,

    // Secondary
    secondary: AppColors.secondary,
    onSecondary: Colors.white,
    secondaryContainer: Color(0xFF1D6A43),
    onSecondaryContainer: Colors.white,

    // Tertiary
    tertiary: AppColors.info,
    onTertiary: Colors.white,
    tertiaryContainer: Color(0xFF1D4D66),
    onTertiaryContainer: Colors.white,

    // Error
    error: AppColors.error,
    onError: Colors.white,
    errorContainer: Color(0xFF8C1D18),
    onErrorContainer: Colors.white,

    // Surface
    surface: Color(0xFF121212),

    onSurface: Colors.white,

    surfaceContainerHighest: Color(0xFF2A2A2A),

    surfaceContainerHigh: Color(0xFF242424),

    surfaceContainer: Color(0xFF1E1E1E),

    // Outline
    outline: Color(0xFF475569),

    outlineVariant: Color(0xFF334155),

    // Shadow
    shadow: Colors.black,

    // Scrim
    scrim: Colors.black87,

    // Inverse
    inverseSurface: Colors.white,

    onInverseSurface: AppColors.textPrimary,

    inversePrimary: AppColors.primary,
  );
}
/*
Penggunaan

Di app_theme.dart:

colorScheme:
    AppColorScheme.light,

Dark:

colorScheme:
    AppColorScheme.dark,
Cara Mengakses

Dengan context_extensions.dart yang sudah dibuat:

context.colorScheme.primary
context.colorScheme.error
context.colorScheme.surface
context.colorScheme.outline
Contoh Nyata di Safenesia

Card Training:

Container(
  decoration: BoxDecoration(
    color: context
        .colorScheme
        .surface,
    border: Border.all(
      color: context
          .colorScheme
          .outline,
    ),
  ),
)

Status Sertifikat Expired:

Text(
  'Expired',
  style: TextStyle(
    color: context
        .colorScheme
        .error,
  ),
)
Rekomendasi Production

Untuk Safenesia, saya biasanya membagi warna menjadi 3 layer:

AppColors
↓
AppColorScheme
↓
ThemeData

Contoh:

AppColors.primary
        ↓
AppColorScheme.primary
        ↓
Theme.of(context)
    .colorScheme
    .primary

Dengan pola ini, jika suatu saat branding Safenesia berubah (misalnya dari biru ke hijau), Anda cukup mengubah AppColors, dan seluruh aplikasi akan ikut berubah secara konsisten.
*/