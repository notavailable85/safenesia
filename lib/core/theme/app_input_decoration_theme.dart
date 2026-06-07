import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class AppInputDecorationTheme {
  AppInputDecorationTheme._();

  // =========================================================
  // LIGHT THEME
  // =========================================================

  static InputDecorationTheme get light {
    return InputDecorationTheme(
      filled: true,

      fillColor: Colors.white,

      isDense: true,

      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSizes.md,
        vertical: AppSizes.md,
      ),

      hintStyle: const TextStyle(
        fontSize: 14,
        color: AppColors.textHint,
        fontWeight: FontWeight.w400,
      ),

      labelStyle: const TextStyle(
        fontSize: 14,
        color: AppColors.textSecondary,
        fontWeight: FontWeight.w500,
      ),

      floatingLabelStyle: const TextStyle(
        fontSize: 14,
        color: AppColors.primary,
        fontWeight: FontWeight.w600,
      ),

      helperStyle: const TextStyle(fontSize: 12, color: AppColors.textPrimary),

      errorStyle: const TextStyle(fontSize: 12, color: AppColors.textPrimary),

      prefixIconColor: AppColors.textPrimary,

      suffixIconColor: AppColors.textSecondary,

      border: _border(),

      enabledBorder: _border(),

      focusedBorder: _border(color: AppColors.primary, width: 1.5),

      errorBorder: _border(color: AppColors.error),

      focusedErrorBorder: _border(color: AppColors.error, width: 1.5),

      disabledBorder: _border(color: AppColors.disabled),
    );
  }

  // =========================================================
  // DARK THEME
  // =========================================================

  static InputDecorationTheme get dark {
    return InputDecorationTheme(
      filled: true,

      fillColor: const Color(0xFF1E1E1E),

      isDense: true,

      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSizes.md,
        vertical: AppSizes.md,
      ),

      hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),

      labelStyle: const TextStyle(fontSize: 14, color: Colors.white70),

      floatingLabelStyle: const TextStyle(
        fontSize: 14,
        color: AppColors.primary,
        fontWeight: FontWeight.w600,
      ),

      helperStyle: const TextStyle(fontSize: 12, color: Colors.grey),

      errorStyle: const TextStyle(fontSize: 12, color: AppColors.error),

      prefixIconColor: Colors.grey,

      suffixIconColor: Colors.grey,

      border: _darkBorder(),

      enabledBorder: _darkBorder(),

      focusedBorder: _darkBorder(color: AppColors.primary, width: 1.5),

      errorBorder: _darkBorder(color: AppColors.error),

      focusedErrorBorder: _darkBorder(color: AppColors.error, width: 1.5),

      disabledBorder: _darkBorder(color: Colors.grey),
    );
  }

  // =========================================================
  // PRIVATE BORDER
  // =========================================================

  static OutlineInputBorder _border({
    Color color = AppColors.border,
    double width = 1,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.radiusLG),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  static OutlineInputBorder _darkBorder({
    Color color = AppColors.border,
    double width = 1,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.radiusLG),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}
/*
Tambahkan ke AppTheme
Light
inputDecorationTheme:
    AppInputDecorationTheme.light,
Dark
inputDecorationTheme:
    AppInputDecorationTheme.dark,
Contoh Penggunaan

Karena sudah menggunakan theme:

TextFormField(
  decoration: InputDecoration(
    labelText: 'Email',
    hintText: 'Masukkan email',
  ),
)

Tidak perlu lagi:

TextFormField(
  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius:
          BorderRadius.circular(16),
    ),
    focusedBorder:
        OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.primary,
      ),
    ),
  ),
)
Contoh Field Login Safenesia
TextFormField(
  controller: emailController,
  keyboardType:
      TextInputType.emailAddress,
  decoration: const InputDecoration(
    labelText: 'Email',
    hintText: 'contoh@email.com',
    prefixIcon: Icon(
      Icons.email_outlined,
    ),
  ),
)
Contoh Password
TextFormField(
  obscureText: true,
  decoration: const InputDecoration(
    labelText: 'Password',
    prefixIcon: Icon(
      Icons.lock_outline,
    ),
    suffixIcon: Icon(
      Icons.visibility_off,
    ),
  ),
)
AppSizes yang Direkomendasikan

Pastikan di app_sizes.dart ada:

static const double xs = 4;
static const double sm = 8;
static const double md = 16;
static const double lg = 24;
static const double xl = 32;

static const double radiusSm = 8;
static const double radiusMd = 12;
static const double radiusLg = 16;
static const double radiusXl = 24;
Struktur Production yang Umum
core/theme/
│
├── app_theme.dart
├── app_color_scheme.dart
├── app_text_theme.dart
├── app_appbar_theme.dart
├── app_button_theme.dart
├── app_card_theme.dart
├── app_input_decoration_theme.dart
├── app_bottom_sheet_theme.dart
├── app_snackbar_theme.dart
└── app_navigation_bar_theme.dart

Untuk aplikasi sebesar Safenesia, struktur tersebut sudah mengikuti praktik yang umum digunakan pada proyek Flutter production dengan Material 3.
*/