import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';

class AppAppBarTheme {
  AppAppBarTheme._();

  /// =========================================================
  /// LIGHT
  /// =========================================================

  static AppBarTheme get light {
    return AppBarTheme(
      centerTitle: false,

      elevation: 0,

      scrolledUnderElevation: 0,

      backgroundColor: Colors.white,

      foregroundColor: AppColors.black,

      surfaceTintColor: Colors.transparent,

      shadowColor: Colors.transparent,

      iconTheme: const IconThemeData(color: AppColors.black, size: 24),

      actionsIconTheme: const IconThemeData(color: AppColors.black, size: 24),

      titleTextStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      ),

      toolbarTextStyle: const TextStyle(fontSize: 16, color: AppColors.black),

      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }

  /// =========================================================
  /// DARK
  /// =========================================================

  static AppBarTheme get dark {
    return AppBarTheme(
      centerTitle: false,

      elevation: 0,

      scrolledUnderElevation: 0,

      backgroundColor: const Color(0xFF121212),

      foregroundColor: Colors.white,

      surfaceTintColor: Colors.transparent,

      shadowColor: Colors.transparent,

      iconTheme: const IconThemeData(color: Colors.white, size: 24),

      actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),

      titleTextStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),

      toolbarTextStyle: const TextStyle(fontSize: 16, color: Colors.white),

      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }
}
/*
Penggunaan di AppTheme
ThemeData(
  appBarTheme:
      AppAppBarTheme.light,
)

Dark mode:

ThemeData(
  appBarTheme:
      AppAppBarTheme.dark,
)
Contoh Hasil
AppBar(
  title: const Text(
    'Pelatihan',
  ),
)

akan otomatis menggunakan:

Background : White
Text Color : AppColors.text
Font Size  : 20
Weight     : 600
Elevation  : 0
Contoh Halaman Safenesia
Scaffold(
  appBar: AppBar(
    title: const Text(
      'Detail Pelatihan',
    ),
  ),
  body: Container(),
);

Tidak perlu lagi:

AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  title: Text(
    'Detail Pelatihan',
    style: TextStyle(
      color: AppColors.text,
    ),
  ),
)

karena semuanya sudah diatur oleh theme.

Versi Production yang Saya Rekomendasikan

Jika Safenesia berkembang besar, saya biasanya menambahkan konstanta berikut agar konsisten di seluruh aplikasi:

class AppAppBarTheme {
  AppAppBarTheme._();

  static const double height = 56;

  static const double titleFontSize =
      20;

  static const FontWeight titleWeight =
      FontWeight.w600;

  static const bool centerTitle =
      false;

  static AppBarTheme get light => ...
  static AppBarTheme get dark => ...
}

Sehingga seluruh halaman:

Training
Certification
Inspection
Renewal
Articles
Regulations
Career

menggunakan standar AppBar yang sama dan mudah diubah dari satu tempat.
*/