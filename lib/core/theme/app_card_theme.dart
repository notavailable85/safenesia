import 'package:flutter/material.dart';

class AppCardTheme {
  AppCardTheme._();

  // =========================================================
  // CONSTANTS
  // =========================================================

  static const double radius = 16;

  static const double elevation = 1;

  static const EdgeInsets margin = EdgeInsets.zero;

  // =========================================================
  // LIGHT
  // =========================================================

  static CardThemeData get light {
    return CardThemeData(
      color: Colors.white,

      surfaceTintColor: Colors.transparent,

      shadowColor: Colors.black12,

      elevation: elevation,

      margin: margin,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),

      clipBehavior: Clip.antiAlias,
    );
  }

  // =========================================================
  // DARK
  // =========================================================

  static CardThemeData get dark {
    return CardThemeData(
      color: const Color(0xFF1E1E1E),

      surfaceTintColor: Colors.transparent,

      shadowColor: Colors.black54,

      elevation: elevation,

      margin: margin,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),

      clipBehavior: Clip.antiAlias,
    );
  }
}

/*
Update AppTheme
ThemeData(
  cardTheme:
      AppCardTheme.light,
)

Dark:

ThemeData(
  cardTheme:
      AppCardTheme.dark,
)
Penggunaan

Karena sudah diatur melalui theme:

Card(
  child: Padding(
    padding:
        EdgeInsets.all(16),
    child: Text(
      'Pelatihan Ahli K3 Umum',
    ),
  ),
)

Tidak perlu lagi:

Card(
  elevation: 1,
  color: Colors.white,
  shape:
      RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(
              16,
            ),
      ),
)
Contoh Card Training Safenesia
Card(
  child: Column(
    crossAxisAlignment:
        CrossAxisAlignment.start,
    children: [
      Text(
        'Ahli K3 Umum',
      ),

      SizedBox(height: 8),

      Text(
        'Online Training',
      ),
    ],
  ),
)
Contoh Card Dashboard
Card(
  child: Row(
    children: [
      Icon(
        Icons.school,
      ),

      SizedBox(width: 12),

      Text(
        '120 Peserta',
      ),
    ],
  ),
)
Versi Production yang Saya Rekomendasikan

Biasanya saya menambahkan beberapa varian card yang akan sering dipakai.

app_card_theme.dart
class AppCardTheme {
  AppCardTheme._();

  static const radius = 16.0;

  static const smallRadius = 12.0;

  static const largeRadius = 24.0;

  static const elevation = 1.0;

  static CardThemeData get light => ...
  static CardThemeData get dark => ...
}
Tambahkan AppSizes

Karena radius sering dipakai di seluruh aplikasi:

class AppSizes {
  AppSizes._();

  static const radiusXs = 4.0;
  static const radiusSm = 8.0;
  static const radiusMd = 12.0;
  static const radiusLg = 16.0;
  static const radiusXl = 24.0;
}

Lalu gunakan:

shape: RoundedRectangleBorder(
  borderRadius:
      BorderRadius.circular(
        AppSizes.radiusLg,
      ),
)

Sehingga seluruh modul Safenesia:

Training
Certification
Inspection
Renewal
Career
Articles
Regulations

menggunakan standar radius yang konsisten dari satu sumber.
*/
