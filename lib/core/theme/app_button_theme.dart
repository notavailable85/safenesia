import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppButtonTheme {
  AppButtonTheme._();

  // =========================================================
  // CONSTANTS
  // =========================================================

  static const double height = 48;

  static const double radius = 12;

  static const EdgeInsets padding = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 12,
  );

  // =========================================================
  // ELEVATED BUTTON
  // =========================================================

  static ElevatedButtonThemeData get elevated {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, height),

        padding: padding,

        elevation: 0,

        backgroundColor: AppColors.primary,

        foregroundColor: Colors.white,

        disabledBackgroundColor: AppColors.disabled,

        disabledForegroundColor: Colors.white,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),

        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }

  // =========================================================
  // FILLED BUTTON
  // =========================================================

  static FilledButtonThemeData get filled {
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(double.infinity, height),

        padding: padding,

        backgroundColor: AppColors.primary,

        foregroundColor: Colors.white,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),

        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }

  // =========================================================
  // OUTLINED BUTTON
  // =========================================================

  static OutlinedButtonThemeData get outlined {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, height),

        padding: padding,

        foregroundColor: AppColors.primary,

        disabledForegroundColor: AppColors.disabled,

        side: const BorderSide(color: AppColors.primary),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),

        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }

  // =========================================================
  // TEXT BUTTON
  // =========================================================

  static TextButtonThemeData get text {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,

        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),

        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }

  // =========================================================
  // ICON BUTTON
  // =========================================================

  static IconButtonThemeData get icon {
    return IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.primary,

        iconSize: 24,

        padding: const EdgeInsets.all(8),
      ),
    );
  }
}
/*
Update AppTheme

Tambahkan semua theme button:

ThemeData(
  elevatedButtonTheme:
      AppButtonTheme.elevated,

  filledButtonTheme:
      AppButtonTheme.filled,

  outlinedButtonTheme:
      AppButtonTheme.outlined,

  textButtonTheme:
      AppButtonTheme.text,

  iconButtonTheme:
      AppButtonTheme.icon,
);
Contoh Penggunaan
Elevated Button
ElevatedButton(
  onPressed: () {},
  child: const Text(
    'Masuk',
  ),
)
Filled Button
FilledButton(
  onPressed: () {},
  child: const Text(
    'Daftar',
  ),
)
Outlined Button
OutlinedButton(
  onPressed: () {},
  child: const Text(
    'Lihat Detail',
  ),
)
Text Button
TextButton(
  onPressed: () {},
  child: const Text(
    'Lupa Password',
  ),
)
Icon Button
IconButton(
  onPressed: () {},
  icon: const Icon(
    Icons.search,
  ),
)
Untuk Safenesia Production

Biasanya saya juga membuat widget custom terpisah:

shared/widgets/buttons/
│
├── app_button.dart
├── app_outlined_button.dart
├── app_text_button.dart
├── app_icon_button.dart
└── app_loading_button.dart

Contoh:

AppButton(
  text: 'Daftar Pelatihan',
  onPressed: () {},
)

Keuntungannya:

Loading state otomatis.
Konsisten di seluruh aplikasi.
Mudah mengganti style global.
Tidak perlu menulis ElevatedButton berulang-ulang.

Jadi kombinasi yang ideal untuk Safenesia adalah:

core/theme/app_button_theme.dart
        +
shared/widgets/buttons/

karena Theme mengatur tampilan global, sedangkan widget custom menangani perilaku dan kebutuhan bisnis aplikasi.
*/