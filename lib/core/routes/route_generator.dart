// import 'package:flutter/material.dart';

// import 'app_routes.dart';

// // Splash
// import '../../features/splash/presentation/pages/splash_page.dart';

// // Onboarding
// import '../../features/onboarding/presentation/pages/onboarding_page.dart';

// // Auth
// import '../../features/auth/presentation/pages/login_page.dart';
// import '../../features/auth/presentation/pages/register_page.dart';
// import '../../features/auth/presentation/pages/forgot_password_page.dart';
// import '../../features/auth/presentation/pages/reset_password_page.dart';
// import '../../features/auth/presentation/pages/verify_otp_page.dart';

// // Home
// import '../../features/home/presentation/pages/home_page.dart';

// // Profile
// import '../../features/profile/presentation/pages/profile_page.dart';
// import '../../features/profile/presentation/pages/edit_profile_page.dart';
// import '../../features/profile/presentation/pages/change_password_page.dart';

// // Training
// import '../../features/training/presentation/pages/training_list_page.dart';
// import '../../features/training/presentation/pages/training_detail_page.dart';

// // Certification
// import '../../features/certification/presentation/pages/certification_list_page.dart';
// import '../../features/certification/presentation/pages/certification_detail_page.dart';

// // Inspection
// import '../../features/inspection/presentation/pages/inspection_list_page.dart';
// import '../../features/inspection/presentation/pages/inspection_detail_page.dart';

// // Renewal
// import '../../features/renewal/presentation/pages/renewal_list_page.dart';

// // Article
// import '../../features/article/presentation/pages/article_list_page.dart';
// import '../../features/article/presentation/pages/article_detail_page.dart';

// // Regulation
// import '../../features/regulation/presentation/pages/regulation_list_page.dart';
// import '../../features/regulation/presentation/pages/regulation_detail_page.dart';

// // Career
// import '../../features/career/presentation/pages/career_list_page.dart';
// import '../../features/career/presentation/pages/career_detail_page.dart';

// // Notification
// import '../../features/notification/presentation/pages/notification_page.dart';

// // Settings
// import '../../features/settings/presentation/pages/settings_page.dart';

// // Error Page
// import '../../shared/pages/not_found_page.dart';

// class RouteGenerator {
//   RouteGenerator._();

//   static Route<dynamic> generateRoute(
//     RouteSettings settings,
//   ) {
//     final args = settings.arguments;

//     switch (settings.name) {
//       // =====================================================
//       // SPLASH
//       // =====================================================

//       case AppRoutes.splash:
//         return _page(
//           const SplashPage(),
//         );

//       case AppRoutes.onboarding:
//         return _page(
//           const OnboardingPage(),
//         );

//       // =====================================================
//       // AUTH
//       // =====================================================

//       case AppRoutes.login:
//         return _page(
//           const LoginPage(),
//         );

//       case AppRoutes.register:
//         return _page(
//           const RegisterPage(),
//         );

//       case AppRoutes.forgotPassword:
//         return _page(
//           const ForgotPasswordPage(),
//         );

//       case AppRoutes.resetPassword:
//         return _page(
//           const ResetPasswordPage(),
//         );

//       case AppRoutes.verifyOtp:
//         return _page(
//           const VerifyOtpPage(),
//         );

//       // =====================================================
//       // HOME
//       // =====================================================

//       case AppRoutes.home:
//       case AppRoutes.dashboard:
//         return _page(
//           const HomePage(),
//         );

//       // =====================================================
//       // PROFILE
//       // =====================================================

//       case AppRoutes.profile:
//         return _page(
//           const ProfilePage(),
//         );

//       case AppRoutes.editProfile:
//         return _page(
//           const EditProfilePage(),
//         );

//       case AppRoutes.changePassword:
//         return _page(
//           const ChangePasswordPage(),
//         );

//       // =====================================================
//       // TRAINING
//       // =====================================================

//       case AppRoutes.trainings:
//         return _page(
//           const TrainingListPage(),
//         );

//       case AppRoutes.trainingDetail:
//         final trainingId = args as int?;

//         return _page(
//           TrainingDetailPage(
//             trainingId: trainingId,
//           ),
//         );

//       // =====================================================
//       // CERTIFICATION
//       // =====================================================

//       case AppRoutes.certifications:
//         return _page(
//           const CertificationListPage(),
//         );

//       case AppRoutes.certificationDetail:
//         final certificationId =
//             args as int?;

//         return _page(
//           CertificationDetailPage(
//             certificationId:
//                 certificationId,
//           ),
//         );

//       // =====================================================
//       // INSPECTION
//       // =====================================================

//       case AppRoutes.inspections:
//         return _page(
//           const InspectionListPage(),
//         );

//       case AppRoutes.inspectionDetail:
//         final inspectionId =
//             args as int?;

//         return _page(
//           InspectionDetailPage(
//             inspectionId:
//                 inspectionId,
//           ),
//         );

//       // =====================================================
//       // RENEWAL
//       // =====================================================

//       case AppRoutes.renewals:
//         return _page(
//           const RenewalListPage(),
//         );

//       // =====================================================
//       // ARTICLE
//       // =====================================================

//       case AppRoutes.articles:
//         return _page(
//           const ArticleListPage(),
//         );

//       case AppRoutes.articleDetail:
//         final articleId = args as int?;

//         return _page(
//           ArticleDetailPage(
//             articleId: articleId,
//           ),
//         );

//       // =====================================================
//       // REGULATION
//       // =====================================================

//       case AppRoutes.regulations:
//         return _page(
//           const RegulationListPage(),
//         );

//       case AppRoutes.regulationDetail:
//         final regulationId =
//             args as int?;

//         return _page(
//           RegulationDetailPage(
//             regulationId:
//                 regulationId,
//           ),
//         );

//       // =====================================================
//       // CAREER
//       // =====================================================

//       case AppRoutes.careers:
//         return _page(
//           const CareerListPage(),
//         );

//       case AppRoutes.careerDetail:
//         final careerId = args as int?;

//         return _page(
//           CareerDetailPage(
//             careerId: careerId,
//           ),
//         );

//       // =====================================================
//       // NOTIFICATION
//       // =====================================================

//       case AppRoutes.notifications:
//         return _page(
//           const NotificationPage(),
//         );

//       // =====================================================
//       // SETTINGS
//       // =====================================================

//       case AppRoutes.settings:
//         return _page(
//           const SettingsPage(),
//         );

//       // =====================================================
//       // DEFAULT
//       // =====================================================

//       default:
//         return _page(
//           const NotFoundPage(),
//         );
//     }
//   }

//   // =========================================================
//   // DEFAULT PAGE ROUTE
//   // =========================================================

//   static MaterialPageRoute _page(
//     Widget page,
//   ) {
//     return MaterialPageRoute(
//       builder: (_) => page,
//     );
//   }
// }
