class AppImages {
  AppImages._();

  // =========================
  // BASE PATH
  // =========================
  static const String _imagePath = 'assets/images';
  // =========================
  // LOGOS
  // =========================
  static const String logoVertical =
      '$_imagePath/logos/logo-safenesia-vertical.png';
  static const String logoHorizontal =
      '$_imagePath/logos/logo-safenesia-horizontal.png';
  static const String logo = '$_imagePath/logos/logo.png';
  static const String logoWhite = '$_imagePath/logos/logo_white.png';
  static const String logoIcon = '$_imagePath/logos/logo_icon.png';
  // =========================
  // ONBOARDING
  // =========================
  static const String onboarding1 = '$_imagePath/onboarding/onboarding_1.png';
  static const String onboarding2 = '$_imagePath/onboarding/onboarding_2.png';
  static const String onboarding3 = '$_imagePath/onboarding/onboarding_3.png';
  // =========================
  // HOME BANNERS
  // =========================
  static const String bannerHome = '$_imagePath/banners/banner_home.jpg';
  static const String bannerTraining =
      '$_imagePath/banners/banner_training.jpg';
  static const String bannerCertification =
      '$_imagePath/banners/banner_certification.jpg';
  static const String bannerInspection =
      '$_imagePath/banners/banner_inspection.jpg';
  // =========================
  // MODULES
  // =========================
  static const String training = '$_imagePath/modules/training.png';
  static const String certification = '$_imagePath/modules/certification.png';
  static const String inspection = '$_imagePath/modules/inspection.png';
  static const String renewal = '$_imagePath/modules/renewal.png';
  static const String regulation = '$_imagePath/modules/regulation.png';
  static const String career = '$_imagePath/modules/career.png';
  // =========================
  // ILLUSTRATIONS
  // =========================
  static const String emptyData = '$_imagePath/illustrations/empty_data.png';
  static const String noInternet = '$_imagePath/illustrations/no_internet.png';
  static const String maintenance = '$_imagePath/illustrations/maintenance.png';
  static const String success = '$_imagePath/illustrations/success.png';
  static const String error = '$_imagePath/illustrations/error.png';
  // =========================
  // PLACEHOLDERS
  // =========================
  static const String profilePlaceholder =
      '$_imagePath/placeholders/profile.png';
  static const String imagePlaceholder =
      '$_imagePath/placeholders/image_placeholder.png';
  static const String companyPlaceholder =
      '$_imagePath/placeholders/company.png';
  // =========================
  // AUTH
  // =========================
  static const String loginBanner = '$_imagePath/auth/login_banner.png';
  static const String registerBanner = '$_imagePath/auth/register_banner.png';
  static const String forgotPasswordBanner =
      '$_imagePath/auth/forgot_password.png';
  // =========================
  // SAFENESIA FEATURE
  // =========================
  static const String trainingCenter =
      '$_imagePath/features/training_center.png';
  static const String certificationCenter =
      '$_imagePath/features/certification_center.png';
  static const String inspectionCenter =
      '$_imagePath/features/inspection_center.png';
  static const String renewalCenter = '$_imagePath/features/renewal_center.png';
  static const String regulationCenter =
      '$_imagePath/features/regulation_center.png';
  static const String careerCenter = '$_imagePath/features/career_center.png';
  // =========================
  // DEFAULT
  // =========================
  static const String defaultImage = imagePlaceholder;
}
/*
==============================
CONTOH PENGGUNAAN
==============================
Image.asset(
  AppImages.logo,
)
Image.asset(
  AppImages.bannerTraining,
  fit: BoxFit.cover,
)
Image.asset(
  AppImages.emptyData,
  width: 200,
)
*/