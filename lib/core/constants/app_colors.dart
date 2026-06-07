import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // =========================
  // BRAND COLORS
  // =========================
  static const Color primary = Color(0xFF5485E5);
  static const Color primaryLight = Color(0xFF8EB1F5);
  static const Color primaryDark = Color(0xFF1A52B8);
  static const Color secondary = Color(0xFF30B44A);
  static const Color secondaryLight = Color(0xFF66D47B);
  static const Color secondaryDark = Color(0xFF00831B);
  static const Color accent = Color(0xFFFF8A00);
  static const Color accentLight = Color(0xFFFFA733);
  static const Color accentDark = Color(0xFFE67600);
  // =========================
  // STATUS COLORS
  // =========================
  static const Color info = Color(0xFF0EA5E9);
  static const Color infoLight = Color(0xFFE0F2FE);
  static const Color success = Color(0xFF16A34A);
  static const Color successLight = Color(0xFFDCFCE7);
  static const Color warning = Color(0xFFF59E0B);
  static const Color warningLight = Color(0xFFFEF3C7);
  static const Color error = Color(0xFFDC2626);
  static const Color errorLight = Color(0xFFFEF2F2);
  // =========================
  // TEXT COLORS
  // =========================
  static const Color textPrimary = Color(0xFF1F2937);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textHint = Color(0xFF94A3B8);
  static const Color textDisabled = Color(0xFFCBD5E1);
  static const Color textWhite = Color(0xFFFFFFFF);
  // =========================
  // BACKGROUND
  // =========================
  static const Color background = Color(0xFFFFFFFF);
  // =========================
  // SURFACE
  // =========================
  static const Color surface = Color(0xFFF8FAFC);
  // =========================
  // BORDER
  // =========================
  static const Color border = Color(0xFFE2E8F0);
  static const Color borderDark = Color(0xFFCBD5E1);
  // =========================
  // DISABLED
  // =========================
  static const Color disabled = Color(0xFF94A3B8);
  // =========================
  // ICON
  // =========================
  static const Color iconPrimary = textPrimary;
  static const Color iconSecondary = textSecondary;
  // =========================
  // SHADOW
  // =========================
  static const Color shadow = Color(0x14000000);
  // =========================
  // OVERLAY
  // =========================
  static const Color overlay = Color(0x80000000);
  // =========================
  // PRODUCT COLORS
  // =========================
  static const Color safety = Color(0xFF00831B);
  static const Color training = Color(0xFFDC2626);
  static const Color certification = Color(0xFF16A34A);
  static const Color inspection = Color(0xFF5485E5);
  static const Color renewal = Color(0xFFF59E0B);
  // =========================
  // DARK THEME
  // =========================
  static const Color darkBackground = Color(0xFF0F172A);
  static const Color darkSurface = Color(0xFF1E293B);
  static const Color darkBorder = Color(0xFF334155);
  static const Color darkTextPrimary = Color(0xFFF8FAFC);
  static const Color darkTextSecondary = Color(0xFFCBD5E1);
  static const Color darkDisabled = Color(0xFF64748B);
  // =========================
  // BLACK & WHITE
  // =========================
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color transparent = Colors.transparent;
  // =========================
  // GRADIENTS COLORS
  // =========================
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, primaryDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [secondary, secondaryDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient accentGradient = LinearGradient(
    colors: [accent, accentDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
/*
==============================
CONTOH PENGGUNAAN
==============================
Container(
  color: AppColors.primary,
)
Text(
  'Safenesia',
  style: TextStyle(
    color: AppColors.textPrimary,
  ),
)
Container(
  padding: const EdgeInsets.all(12),
  decoration: BoxDecoration(
    color: AppColors.successLight,
    borderRadius: BorderRadius.circular(12),
  ),
)
==============================
Ekspansi
==============================
import 'package:flutter/material.dart';

class AppMaterialColors {
  AppMaterialColors._();
  static const MaterialColor primarySwatch =
      MaterialColor(0xFF5485E5, <int, Color>{
      50: Color(0xFFF3F7FE),
      100: Color(0xFFDCE8FB),
      200: Color(0xFFBFD4F8),
      300: Color(0xFFA2C0F4),
      400: Color(0xFF86ACF0),
      500: Color(0xFF5485E5),
      600: Color(0xFF4677D8),
      700: Color(0xFF3969CA),
      800: Color(0xFF2C5BBC),
      900: Color(0xFF1F4DAF),
    },
  );
}
*/