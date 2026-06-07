import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppBottomSheetTheme {
  AppBottomSheetTheme._();

  /// =========================================================
  /// LIGHT
  /// =========================================================

  static BottomSheetThemeData get light {
    return BottomSheetThemeData(
      backgroundColor: Colors.white,

      modalBackgroundColor: Colors.white,

      surfaceTintColor: Colors.transparent,

      elevation: 8,

      showDragHandle: true,

      dragHandleColor: AppColors.border,

      dragHandleSize: const Size(40, 4),

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),

      constraints: const BoxConstraints(minWidth: double.infinity),
    );
  }

  /// =========================================================
  /// DARK
  /// =========================================================

  static BottomSheetThemeData get dark {
    return BottomSheetThemeData(
      backgroundColor: const Color(0xFF1E1E1E),

      modalBackgroundColor: const Color(0xFF1E1E1E),

      surfaceTintColor: Colors.transparent,

      elevation: 8,

      showDragHandle: true,

      dragHandleColor: Colors.grey.shade700,

      dragHandleSize: const Size(40, 4),

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),

      constraints: const BoxConstraints(minWidth: double.infinity),
    );
  }
}

/*
Penggunaan di AppTheme
ThemeData(
  bottomSheetTheme:
      AppBottomSheetTheme.light,
)

Dark mode:

ThemeData(
  bottomSheetTheme:
      AppBottomSheetTheme.dark,
)
Contoh Pemanggilan
showModalBottomSheet(
  context: context,
  builder: (_) {
    return const FilterSheet();
  },
);

Karena sudah menggunakan theme, tidak perlu lagi:

showModalBottomSheet(
  context: context,
  backgroundColor:
      Colors.white,
  shape:
      RoundedRectangleBorder(
        borderRadius:
            BorderRadius.vertical(
              top: Radius.circular(
                24,
              ),
            ),
      ),
  builder: (_) {
    return const FilterSheet();
  },
);
Contoh Bottom Sheet Safenesia
class FilterTrainingSheet
    extends StatelessWidget {
  const FilterTrainingSheet({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding:
          const EdgeInsets.all(24),
      child: Column(
        mainAxisSize:
            MainAxisSize.min,
        children: [
          Text(
            'Filter Pelatihan',
            style: context
                .textTheme
                .titleLarge,
          ),
        ],
      ),
    );
  }
}
Versi Production yang Saya Rekomendasikan

Jika ingin lebih fleksibel, tambahkan konstanta:

class AppBottomSheetTheme {
  AppBottomSheetTheme._();

  static const radius = 24.0;

  static const dragHandleWidth =
      40.0;

  static const dragHandleHeight =
      4.0;

  static BottomSheetThemeData
  get light => ...

  static BottomSheetThemeData
  get dark => ...
}

Sehingga seluruh Bottom Sheet pada modul:

Training
Certification
Inspection
Renewal
Articles
Regulations
Career

akan memiliki tampilan yang konsisten dan mudah diubah dari satu tempat.
*/
