class AppRoutes {
  AppRoutes._();

  // =========================================================
  // SPLASH
  // =========================================================
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  // =========================================================
  // AUTH
  // =========================================================
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String verifyOtp = '/verify-otp';
  // =========================================================
  // MAIN
  // =========================================================
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  // =========================================================
  // PROFILE
  // =========================================================
  static const String profile = '/profile';
  static const String editProfile = '/profile/edit';
  static const String changePassword = '/profile/change-password';
  static const String settings = '/settings';
  // =========================================================
  // TRAINING
  // =========================================================
  static const String trainings = '/trainings';
  static const String trainingDetail = '/trainings/detail';
  static const String trainingRegister = '/trainings/register';
  static const String trainingSchedule = '/trainings/schedule';
  static const String trainingCertificate = '/trainings/certificate';
  // =========================================================
  // CERTIFICATION
  // =========================================================
  static const String certifications = '/certifications';
  static const String certificationDetail = '/certifications/detail';
  static const String certificationRegister = '/certifications/register';
  static const String certificationResult = '/certifications/result';
  // =========================================================
  // INSPECTION
  // =========================================================
  static const String inspections = '/inspections';
  static const String inspectionDetail = '/inspections/detail';
  static const String inspectionCreate = '/inspections/create';
  static const String inspectionReport = '/inspections/report';
  // =========================================================
  // RENEWAL
  // =========================================================
  static const String renewals = '/renewals';
  static const String renewalDetail = '/renewals/detail';
  static const String renewalRequest = '/renewals/request';
  // =========================================================
  // CERTIFICATE
  // =========================================================
  static const String certificates = '/certificates';
  static const String certificateDetail = '/certificates/detail';
  static const String certificateDownload = '/certificates/download';
  // =========================================================
  // ARTICLE
  // =========================================================
  static const String articles = '/articles';
  static const String articleDetail = '/articles/detail';
  // =========================================================
  // REGULATION
  // =========================================================
  static const String regulations = '/regulations';
  static const String regulationDetail = '/regulations/detail';
  // =========================================================
  // CAREER
  // =========================================================
  static const String careers = '/careers';
  static const String careerDetail = '/careers/detail';
  static const String careerApply = '/careers/apply';
  // =========================================================
  // NOTIFICATION
  // =========================================================
  static const String notifications = '/notifications';
  // =========================================================
  // PAYMENT
  // =========================================================
  static const String payments = '/payments';
  static const String paymentDetail = '/payments/detail';
  static const String paymentSuccess = '/payments/success';
  static const String paymentFailed = '/payments/failed';
  // =========================================================
  // INVOICE
  // =========================================================
  static const String invoices = '/invoices';
  static const String invoiceDetail = '/invoices/detail';
  // =========================================================
  // DOCUMENT
  // =========================================================
  static const String documents = '/documents';
  static const String documentUpload = '/documents/upload';
  static const String documentDetail = '/documents/detail';
  // =========================================================
  // SUPPORT
  // =========================================================
  static const String helpCenter = '/help-center';
  static const String contactUs = '/contact-us';
  static const String faq = '/faq';
  // =========================================================
  // WEBVIEW
  // =========================================================
  static const String webView = '/web-view';
  // =========================================================
  // ERROR
  // =========================================================
  static const String notFound = '/404';
  static const String forbidden = '/403';
  static const String serverError = '/500';
}
/*
Push
Navigator.pushNamed(
  context,
  AppRoutes.login,
);
Replace
Navigator.pushReplacementNamed(
  context,
  AppRoutes.home,
);
Push And Remove Until
Navigator.pushNamedAndRemoveUntil(
  context,
  AppRoutes.dashboard,
  (route) => false,
);
Dengan Argument
Navigator.pushNamed(
  context,
  AppRoutes.trainingDetail,
  arguments: trainingId,
);
Bonus (Standar Enterprise)

Biasanya saya menambahkan helper di bawah class yang sama:

class RouteArguments {
  RouteArguments._();

  static const String id = 'id';
  static const String title = 'title';
  static const String slug = 'slug';
  static const String url = 'url';
}

Contoh:

Navigator.pushNamed(
  context,
  AppRoutes.articleDetail,
  arguments: {
    RouteArguments.id: article.id,
    RouteArguments.slug: article.slug,
  },
);
Untuk Safenesia

Karena modul yang sudah disepakati adalah:

Auth
Home
Training
Certification
Inspection
Renewal
Certificate
Article
Regulation
Career
Payment
Invoice
Profile
Notification
*/