class AppSizes {
  AppSizes._();

  // =========================
  // SPACING
  // =========================
  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double xxxl = 32;
  static const double huge = 40;
  static const double giant = 48;
  // =========================
  // PADDING
  // =========================
  static const double paddingXS = 4;
  static const double paddingSM = 8;
  static const double paddingMD = 12;
  static const double paddingLG = 16;
  static const double paddingXL = 20;
  static const double paddingXXL = 24;
  static const double paddingXXXL = 32;
  // =========================
  // MARGIN
  // =========================
  static const double marginXS = 4;
  static const double marginSM = 8;
  static const double marginMD = 12;
  static const double marginLG = 16;
  static const double marginXL = 20;
  static const double marginXXL = 24;
  static const double marginXXXL = 32;
  // =========================
  // BORDER RADIUS
  // =========================
  static const double radiusXS = 4;
  static const double radiusSM = 8;
  static const double radiusMD = 12;
  static const double radiusLG = 16;
  static const double radiusXL = 20;
  static const double radiusXXL = 24;
  static const double radiusRound = 999;
  // =========================
  // BORDER WIDTH
  // =========================
  static const double borderThin = 1;
  static const double borderMedium = 1.5;
  static const double borderThick = 2;
  // =========================
  // ICON SIZE
  // =========================
  static const double iconXS = 12;
  static const double iconSM = 16;
  static const double iconMD = 20;
  static const double iconLG = 24;
  static const double iconXL = 32;
  static const double iconXXL = 40;
  static const double iconXXXL = 48;
  // =========================
  // BUTTON HEIGHT
  // =========================
  static const double buttonXS = 32;
  static const double buttonSM = 40;
  static const double buttonMD = 48;
  static const double buttonLG = 56;
  static const double buttonXL = 64;
  // =========================
  // INPUT FIELD HEIGHT
  // =========================
  static const double inputSM = 40;
  static const double inputMD = 48;
  static const double inputLG = 56;
  // =========================
  // APP BAR
  // =========================
  static const double appBarHeight = 56;
  // =========================
  // BOTTOM NAVIGATION
  // =========================
  static const double bottomNavHeight = 64;
  // =========================
  // CARD
  // =========================
  static const double cardElevation = 2;
  static const double cardRadius = 16;
  // =========================
  // AVATAR
  // =========================
  static const double avatarXS = 24;
  static const double avatarSM = 32;
  static const double avatarMD = 40;
  static const double avatarLG = 56;
  static const double avatarXL = 72;
  static const double avatarXXL = 96;
  // =========================
  // IMAGE
  // =========================
  static const double imageThumb = 60;
  static const double imageSmall = 100;
  static const double imageMedium = 160;
  static const double imageLarge = 240;
  static const double imageBanner = 320;
  // =========================
  // DIVIDER
  // =========================
  static const double divider = 1;
  // =========================
  // ELEVATION
  // =========================
  static const double elevationXS = 1;
  static const double elevationSM = 2;
  static const double elevationMD = 4;
  static const double elevationLG = 8;
  static const double elevationXL = 12;
  // =========================
  // DIALOG
  // =========================
  static const double dialogRadius = 20;
  // =========================
  // ANIMATION
  // =========================
  static const int animationFast = 200;
  static const int animationNormal = 300;
  static const int animationSlow = 500;
  // =========================
  // BREAKPOINTS
  // =========================
  static const double mobile = 600;
  static const double tablet = 1024;
  static const double desktop = 1440;
  // =========================
  // MAX WIDTH
  // =========================
  static const double maxContentWidth = 1200;
  // =========================
  // FORM WIDTH
  // =========================
  static const double formWidth = 500;
  // =========================
  // LIST ITEM
  // =========================
  static const double listTileHeight = 72;
  // =========================
  // LOADING
  // =========================
  static const double loadingSmall = 20;
  static const double loadingMedium = 32;
  static const double loadingLarge = 48;
}
/*
==============================
CONTOH PENGGUNAAN
==============================
Padding(
  padding: const EdgeInsets.all(AppSizes.paddingLG),
  child: Text('Safenesia'),
);
SizedBox(height: AppSizes.xxl);
Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      AppSizes.radiusLG,
    ),
  ),
);
Icon(
  AppIcons.training,
  size: AppSizes.iconLG,
);
==============================
Ekspansi
==============================
core/constants/
│
├── app_sizes.dart
├── app_spacing.dart
├── app_radius.dart
├── app_durations.dart
└── app_breakpoints.dart
*/