import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  // =========================================================
  // MEDIA QUERY
  // =========================================================

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get screenSize => mediaQuery.size;

  double get width => mediaQuery.size.width;

  double get height => mediaQuery.size.height;

  double get shortestSide => mediaQuery.size.shortestSide;

  double get longestSide => mediaQuery.size.longestSide;

  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  EdgeInsets get padding => mediaQuery.padding;

  // =========================================================
  // DEVICE
  // =========================================================

  bool get isTablet => shortestSide >= 600;

  bool get isPhone => shortestSide < 600;

  bool get isLandscape => mediaQuery.orientation == Orientation.landscape;

  bool get isPortrait => mediaQuery.orientation == Orientation.portrait;

  // =========================================================
  // THEME
  // =========================================================

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  // =========================================================
  // COLORS
  // =========================================================

  Color get primaryColor => colorScheme.primary;

  Color get secondaryColor => colorScheme.secondary;

  Color get surfaceColor => colorScheme.surface;

  Color get errorColor => colorScheme.error;

  // =========================================================
  // BRIGHTNESS
  // =========================================================

  bool get isDarkMode => theme.brightness == Brightness.dark;

  bool get isLightMode => theme.brightness == Brightness.light;

  // =========================================================
  // FOCUS
  // =========================================================

  void unfocus() {
    FocusScope.of(this).unfocus();
  }

  // =========================================================
  // KEYBOARD
  // =========================================================

  bool get isKeyboardOpen => viewInsets.bottom > 0;

  // =========================================================
  // NAVIGATION
  // =========================================================

  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.pushNamed<T>(this, routeName, arguments: arguments);
  }

  Future<T?> pushReplacementNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.pushReplacementNamed<T, T>(
      this,
      routeName,
      arguments: arguments,
    );
  }

  Future<T?> pushNamedAndRemoveUntil<T>(String routeName, {Object? arguments}) {
    return Navigator.pushNamedAndRemoveUntil<T>(
      this,
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  void pop<T extends Object?>([T? result]) {
    Navigator.pop(this, result);
  }

  bool canPop() {
    return Navigator.canPop(this);
  }

  // =========================================================
  // SNACKBAR
  // =========================================================

  void showSnackBar(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(backgroundColor: Colors.red, content: Text(message)),
      );
  }

  void showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(backgroundColor: Colors.green, content: Text(message)),
      );
  }

  // =========================================================
  // DIALOG
  // =========================================================

  Future<void> showLoadingDialog() {
    return showDialog(
      context: this,
      barrierDismissible: false,
      builder: (_) {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  void closeDialog() {
    if (canPop()) {
      pop();
    }
  }

  // =========================================================
  // BOTTOM SHEET
  // =========================================================

  Future<T?> showAppBottomSheet<T>(Widget child) {
    return showModalBottomSheet<T>(
      context: this,
      isScrollControlled: true,
      builder: (_) => child,
    );
  }
}
/*
Contoh Penggunaan
Width & Height
Sebelum
MediaQuery.of(context)
    .size
    .width
Sesudah
context.width
Theme
Sebelum
Theme.of(context)
Sesudah
context.theme
TextTheme
context.textTheme.titleLarge
ColorScheme
context.colorScheme.primary
Dark Mode
if (context.isDarkMode) {
  //
}
Tutup Keyboard
Sebelum
FocusScope.of(context)
    .unfocus();
Sesudah
context.unfocus();
Navigation
Sebelum
Navigator.pushNamed(
  context,
  AppRoutes.login,
);
Sesudah
context.pushNamed(
  AppRoutes.login,
);
Navigation dengan Argument
context.pushNamed(
  AppRoutes.trainingDetail,
  arguments: TrainingDetailArgs(
    trainingId: 15,
  ),
);
Replace Route
context.pushReplacementNamed(
  AppRoutes.home,
);
Remove All Route
context.pushNamedAndRemoveUntil(
  AppRoutes.home,
);
Pop
context.pop();
Snackbar
context.showSnackBar(
  'Data berhasil disimpan',
);
Error Snackbar
context.showErrorSnackBar(
  'Terjadi kesalahan',
);
Success Snackbar
context.showSuccessSnackBar(
  'Login berhasil',
);
Loading Dialog
await context.showLoadingDialog();

Tutup:

context.closeDialog();
Bottom Sheet
context.showAppBottomSheet(
  const FilterBottomSheet(),
);
Rekomendasi untuk Safenesia

Untuk codebase production, saya biasanya memecah menjadi:

extensions/
│
├── context_extensions.dart
├── navigation_extensions.dart
├── snackbar_extensions.dart
└── dialog_extensions.dart

Namun pada fase awal pembangunan Safenesia, satu file context_extensions.dart seperti di atas sudah sangat lengkap, bersih, dan sesuai praktik yang umum digunakan pada aplikasi Flutter modern.
*/