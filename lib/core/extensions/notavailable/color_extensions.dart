import 'package:flutter/material.dart';

extension ColorExtensions on Color {
  // =========================================================
  // HEX
  // =========================================================

  String get toHex {
    return '#'
            '${a.toInt().toRadixString(16).padLeft(2, '0')}'
            '${r.toInt().toRadixString(16).padLeft(2, '0')}'
            '${g.toInt().toRadixString(16).padLeft(2, '0')}'
            '${b.toInt().toRadixString(16).padLeft(2, '0')}'
        .toUpperCase();
  }

  String get toHexRGB {
    return '#'
            '${r.toInt().toRadixString(16).padLeft(2, '0')}'
            '${g.toInt().toRadixString(16).padLeft(2, '0')}'
            '${b.toInt().toRadixString(16).padLeft(2, '0')}'
        .toUpperCase();
  }

  // =========================================================
  // OPACITY
  // =========================================================

  Color withOpacityValue(double opacity) {
    return withValues(alpha: opacity);
  }

  // =========================================================
  // BRIGHTNESS
  // =========================================================

  bool get isDark {
    return computeLuminance() < 0.5;
  }

  bool get isLight {
    return !isDark;
  }

  // =========================================================
  // CONTRAST COLOR
  // =========================================================

  Color get contrastColor {
    return isDark ? Colors.white : Colors.black;
  }

  // =========================================================
  // LIGHTEN
  // =========================================================

  Color lighten([double amount = 0.1]) {
    final hsl = HSLColor.fromColor(this);

    final lightness = (hsl.lightness + amount).clamp(0.0, 1.0);

    return hsl.withLightness(lightness).toColor();
  }

  // =========================================================
  // DARKEN
  // =========================================================

  Color darken([double amount = 0.1]) {
    final hsl = HSLColor.fromColor(this);

    final lightness = (hsl.lightness - amount).clamp(0.0, 1.0);

    return hsl.withLightness(lightness).toColor();
  }

  // =========================================================
  // SATURATION
  // =========================================================

  Color saturate([double amount = 0.1]) {
    final hsl = HSLColor.fromColor(this);

    final saturation = (hsl.saturation + amount).clamp(0.0, 1.0);

    return hsl.withSaturation(saturation).toColor();
  }

  Color desaturate([double amount = 0.1]) {
    final hsl = HSLColor.fromColor(this);

    final saturation = (hsl.saturation - amount).clamp(0.0, 1.0);

    return hsl.withSaturation(saturation).toColor();
  }

  // =========================================================
  // MATERIAL COLOR
  // =========================================================

  MaterialColor get materialColor {
    return MaterialColor(value.toInt(), <int, Color>{
      50: tint(0.9),
      100: tint(0.8),
      200: tint(0.6),
      300: tint(0.4),
      400: tint(0.2),
      500: this,
      600: shade(0.1),
      700: shade(0.2),
      800: shade(0.3),
      900: shade(0.4),
    });
  }

  // =========================================================
  // GRADIENT
  // =========================================================

  LinearGradient get verticalGradient {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [lighten(0.1), this],
    );
  }

  LinearGradient get horizontalGradient {
    return LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [lighten(0.1), this],
    );
  }

  // =========================================================
  // PRIVATE
  // =========================================================

  Color tint(double factor) {
    return Color.from(
      alpha: a,
      red: r + ((255 - r) * factor),
      green: g + ((255 - g) * factor),
      blue: b + ((255 - b) * factor),
    );
  }

  Color shade(double factor) {
    return Color.from(
      alpha: a,
      red: r * (1 - factor),
      green: g * (1 - factor),
      blue: b * (1 - factor),
    );
  }
}

/// ===========================================================
/// STRING TO COLOR
/// ===========================================================

extension StringColorExtension on String {
  Color get toColor {
    String hex = replaceAll('#', '');

    if (hex.length == 6) {
      hex = 'FF$hex';
    }

    return Color(int.parse(hex, radix: 16));
  }
}
/*
Contoh Penggunaan
Hex → Color
final color =
    '#5485E5'.toColor;
Color → Hex
AppColors.primary.toHex;

Output:

#FF5485E5
RGB Hex
AppColors.primary.toHexRGB;

Output:

#5485E5
Opacity
AppColors.primary
    .withOpacityValue(0.15);
Lighten
AppColors.primary.lighten();

atau

AppColors.primary.lighten(0.2);
Darken
AppColors.primary.darken();
Contrast Text Color
Container(
  color: AppColors.primary,
  child: Text(
    'Safenesia',
    style: TextStyle(
      color: AppColors.primary
          .contrastColor,
    ),
  ),
);
Material Color

Daripada membuat:

app_material_colors.dart

Anda bisa langsung:

theme: ThemeData(
  primarySwatch:
      AppColors.primary
          .materialColor,
),
Gradient
Container(
  decoration: BoxDecoration(
    gradient: AppColors.primary
        .verticalGradient,
  ),
);
Penggunaan untuk Safenesia

Misalnya:

class AppColors {
  static const primary =
      Color(0xFF5485E5);

  static const success =
      Color(0xFF16A34A);

  static const warning =
      Color(0xFFF59E0B);

  static const danger =
      Color(0xFFDC2626);
}

Maka:

AppColors.primary.materialColor
AppColors.primary.lighten()
AppColors.primary.darken()
AppColors.primary.contrastColor
'#5485E5'.toColor

akan mencakup hampir seluruh kebutuhan tema dan styling yang umum digunakan pada aplikasi Flutter production seperti Safenesia.

Catatan Penting (Flutter 3.27+)

Jika proyek Anda menggunakan Flutter terbaru, implementasi Color.from(...) mungkin tidak tersedia pada semua versi SDK. Untuk kompatibilitas yang lebih luas, bagian tint() dan shade() dapat diganti dengan:

Color.fromARGB(
  (a * 255).round(),
  (redValue).round(),
  (greenValue).round(),
  (blueValue).round(),
);

atau menggunakan Color.fromRGBO(...). Ini biasanya lebih aman lintas versi Flutter.
*/