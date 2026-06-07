import 'package:flutter/material.dart';
import 'package:safenesia/core/constants/app_colors.dart';

class SnackbarHelper {
  SnackbarHelper._();

  static void success(BuildContext context, String message) {
    _show(context, message, AppColors.success);
  }

  static void error(BuildContext context, String message) {
    _show(context, message, AppColors.error);
  }

  static void warning(BuildContext context, String message) {
    _show(context, message, AppColors.warning);
  }

  static void info(BuildContext context, String message) {
    _show(context, message, AppColors.primary);
  }

  static void _show(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(backgroundColor: color, content: Text(message)));
  }
}
/*
Contoh Penggunaan
SnackbarHelper.success(
  context,
  'Pendaftaran berhasil',
);
SnackbarHelper.error(
  context,
  'Terjadi kesalahan',
);
SnackbarHelper.warning(
  context,
  'Lengkapi data terlebih dahulu',
);
SnackbarHelper.info(
  context,
  'Data sedang diproses',
);
Rekomendasi untuk Safenesia

Struktur tema yang biasanya saya gunakan pada proyek production:

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
├── app_navigation_bar_theme.dart
├── app_dialog_theme.dart
└── app_chip_theme.dart

Selain SnackBarTheme, untuk aplikasi sebesar Safenesia saya juga menyarankan menambahkan:

app_dialog_theme.dart
app_navigation_bar_theme.dart
app_chip_theme.dart

karena ketiganya hampir pasti akan digunakan pada modul pelatihan, sertifikasi, inspeksi, artikel, dan dashboard.
*/