class RouteArguments {
  const RouteArguments();
}

// =========================================================
// TRAINING DETAIL
// =========================================================

class TrainingDetailArgs extends RouteArguments {
  final int trainingId;

  const TrainingDetailArgs({required this.trainingId});
}

// =========================================================
// CERTIFICATION DETAIL
// =========================================================

class CertificationDetailArgs extends RouteArguments {
  final int certificationId;

  const CertificationDetailArgs({required this.certificationId});
}

// =========================================================
// INSPECTION DETAIL
// =========================================================

class InspectionDetailArgs extends RouteArguments {
  final int inspectionId;

  const InspectionDetailArgs({required this.inspectionId});
}

// =========================================================
// ARTICLE DETAIL
// =========================================================

class ArticleDetailArgs extends RouteArguments {
  final int articleId;
  final String? slug;

  const ArticleDetailArgs({required this.articleId, this.slug});
}

// =========================================================
// REGULATION DETAIL
// =========================================================

class RegulationDetailArgs extends RouteArguments {
  final int regulationId;

  const RegulationDetailArgs({required this.regulationId});
}

// =========================================================
// CAREER DETAIL
// =========================================================

class CareerDetailArgs extends RouteArguments {
  final int careerId;

  const CareerDetailArgs({required this.careerId});
}

// =========================================================
// CERTIFICATE DETAIL
// =========================================================

class CertificateDetailArgs extends RouteArguments {
  final int certificateId;

  const CertificateDetailArgs({required this.certificateId});
}

// =========================================================
// DOCUMENT DETAIL
// =========================================================

class DocumentDetailArgs extends RouteArguments {
  final int documentId;

  const DocumentDetailArgs({required this.documentId});
}

// =========================================================
// PAYMENT DETAIL
// =========================================================

class PaymentDetailArgs extends RouteArguments {
  final int paymentId;

  const PaymentDetailArgs({required this.paymentId});
}

// =========================================================
// INVOICE DETAIL
// =========================================================

class InvoiceDetailArgs extends RouteArguments {
  final int invoiceId;

  const InvoiceDetailArgs({required this.invoiceId});
}

// =========================================================
// PROFILE
// =========================================================

class ProfileArgs extends RouteArguments {
  final int userId;

  const ProfileArgs({required this.userId});
}

// =========================================================
// WEBVIEW
// =========================================================

class WebViewArgs extends RouteArguments {
  final String title;
  final String url;

  const WebViewArgs({required this.title, required this.url});
}

// =========================================================
// PDF VIEWER
// =========================================================

class PdfViewerArgs extends RouteArguments {
  final String title;
  final String pdfUrl;

  const PdfViewerArgs({required this.title, required this.pdfUrl});
}

// =========================================================
// IMAGE VIEWER
// =========================================================

class ImageViewerArgs extends RouteArguments {
  final String imageUrl;

  const ImageViewerArgs({required this.imageUrl});
}

// =========================================================
// OTP
// =========================================================

class VerifyOtpArgs extends RouteArguments {
  final String email;

  const VerifyOtpArgs({required this.email});
}

// =========================================================
// RESET PASSWORD
// =========================================================

class ResetPasswordArgs extends RouteArguments {
  final String token;

  const ResetPasswordArgs({required this.token});
}
