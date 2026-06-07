import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class AppSnackBarTheme {
  AppSnackBarTheme._();

  // =========================================================
  // LIGHT
  // =========================================================

  static SnackBarThemeData get light {
    return SnackBarThemeData(
      behavior: SnackBarBehavior.floating,

      backgroundColor: AppColors.textPrimary,

      contentTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),

      elevation: 4,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusMD),
      ),

      actionTextColor: AppColors.primary,

      disabledActionTextColor: AppColors.disabled,

      showCloseIcon: true,

      closeIconColor: Colors.white,

      insetPadding: const EdgeInsets.symmetric(
        horizontal: AppSizes.md,
        vertical: AppSizes.sm,
      ),
    );
  }

  // =========================================================
  // DARK
  // =========================================================

  static SnackBarThemeData get dark {
    return SnackBarThemeData(
      behavior: SnackBarBehavior.floating,

      backgroundColor: const Color(0xFF1E1E1E),

      contentTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),

      elevation: 4,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusMD),
      ),

      actionTextColor: AppColors.primary,

      disabledActionTextColor: Colors.grey,

      showCloseIcon: true,

      closeIconColor: Colors.white,

      insetPadding: const EdgeInsets.symmetric(
        horizontal: AppSizes.md,
        vertical: AppSizes.sm,
      ),
    );
  }
}
/*
Tambahkan ke app_theme.dart
Light
snackBarTheme:
    AppSnackBarTheme.light,
Dark
snackBarTheme:
    AppSnackBarTheme.dark,
app_theme.dart

Contoh:

ThemeData(
  useMaterial3: true,

  snackBarTheme:
      AppSnackBarTheme.light,
)
Penggunaan

Karena sudah menggunakan theme:

ScaffoldMessenger.of(context)
    .showSnackBar(
  const SnackBar(
    content: Text(
      'Data berhasil disimpan',
    ),
  ),
);

akan otomatis mengikuti style global.
*/