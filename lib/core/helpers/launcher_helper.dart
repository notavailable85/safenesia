import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherHelper {
  LauncherHelper._();

  // =========================
  // CORE
  // =========================

  static Future<bool> launch(String url) async {
    try {
      final uri = Uri.parse(url);

      if (await canLaunchUrl(uri)) {
        return await launchUrl(uri, mode: LaunchMode.externalApplication);
      }

      return false;
    } catch (e) {
      debugPrint('Launch Error: $e');
      return false;
    }
  }

  // =========================
  // WEBSITE
  // =========================

  static Future<bool> website(String url) async {
    return launch(url);
  }

  // =========================
  // IN APP BROWSER
  // =========================

  static Future<bool> inAppBrowser(String url) async {
    try {
      final uri = Uri.parse(url);

      return await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
    } catch (e) {
      debugPrint('Browser Error: $e');
      return false;
    }
  }

  // =========================
  // PHONE CALL
  // =========================

  static Future<bool> phone(String phoneNumber) async {
    try {
      final uri = Uri.parse('tel:$phoneNumber');

      return await launchUrl(uri);
    } catch (e) {
      debugPrint('Phone Error: $e');
      return false;
    }
  }

  // =========================
  // SMS
  // =========================

  static Future<bool> sms(String phoneNumber, {String? message}) async {
    try {
      final uri = Uri.parse(
        'sms:$phoneNumber'
        '${message != null ? '?body=$message' : ''}',
      );

      return await launchUrl(uri);
    } catch (e) {
      debugPrint('SMS Error: $e');
      return false;
    }
  }

  // =========================
  // EMAIL
  // =========================

  static Future<bool> email({
    required String email,
    String? subject,
    String? body,
  }) async {
    try {
      final uri = Uri(
        scheme: 'mailto',
        path: email,
        queryParameters: {'subject': ?subject, 'body': ?body},
      );

      return await launchUrl(uri);
    } catch (e) {
      debugPrint('Email Error: $e');
      return false;
    }
  }

  // =========================
  // WHATSAPP
  // =========================

  static Future<bool> whatsapp({required String phone, String? message}) async {
    try {
      final text = Uri.encodeComponent(message ?? '');

      final url = 'https://wa.me/$phone?text=$text';

      return await launch(url);
    } catch (e) {
      debugPrint('WhatsApp Error: $e');
      return false;
    }
  }

  // =========================
  // GOOGLE MAPS
  // =========================

  static Future<bool> maps({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final url =
          'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

      return await launch(url);
    } catch (e) {
      debugPrint('Maps Error: $e');
      return false;
    }
  }

  // =========================
  // GOOGLE MAPS SEARCH
  // =========================

  static Future<bool> mapsSearch(String query) async {
    try {
      final encoded = Uri.encodeComponent(query);

      final url = 'https://www.google.com/maps/search/?api=1&query=$encoded';

      return await launch(url);
    } catch (e) {
      debugPrint('Maps Search Error: $e');
      return false;
    }
  }

  // =========================
  // PDF
  // =========================

  static Future<bool> pdf(String pdfUrl) async {
    return launch(pdfUrl);
  }

  // =========================
  // FILE DOWNLOAD
  // =========================

  static Future<bool> download(String fileUrl) async {
    return launch(fileUrl);
  }

  // =========================
  // YOUTUBE
  // =========================

  static Future<bool> youtube(String url) async {
    return launch(url);
  }

  // =========================
  // FACEBOOK
  // =========================

  static Future<bool> facebook(String url) async {
    return launch(url);
  }

  // =========================
  // INSTAGRAM
  // =========================

  static Future<bool> instagram(String url) async {
    return launch(url);
  }

  // =========================
  // LINKEDIN
  // =========================

  static Future<bool> linkedin(String url) async {
    return launch(url);
  }

  // =========================
  // TELEGRAM
  // =========================

  static Future<bool> telegram(String username) async {
    return launch('https://t.me/$username');
  }

  // =========================
  // PLAY STORE
  // =========================

  static Future<bool> playStore(String packageName) async {
    return launch('https://play.google.com/store/apps/details?id=$packageName');
  }

  // =========================
  // APP STORE
  // =========================

  static Future<bool> appStore(String appId) async {
    return launch('https://apps.apple.com/app/id$appId');
  }
}
/*
==============================
Contoh Penggunaan
==============================
Website
await LauncherHelper.website(
  'https://www.safenesia.com',
);
WhatsApp
await LauncherHelper.whatsapp(
  phone: '6281234567890',
  message: 'Halo Safenesia',
);
Telepon
await LauncherHelper.phone(
  '081234567890',
);
Email
await LauncherHelper.email(
  email: 'info@safenesia.com',
  subject: 'Pertanyaan Pelatihan',
);
Maps Berdasarkan Koordinat
await LauncherHelper.maps(
  latitude: -6.2088,
  longitude: 106.8456,
);
Maps Berdasarkan Pencarian
await LauncherHelper.mapsSearch(
  'Markatiga Training Center',
);
PDF Sertifikat
await LauncherHelper.pdf(
  certificate.fileUrl,
);
Download Materi Training
await LauncherHelper.download(
  training.materialUrl,
);

==============================
Ekspansi
==============================
Rekomendasi untuk Safenesia
Untuk kebutuhan Safenesia saat ini, fitur yang paling sering dipakai adalah:
✅ website()
✅ whatsapp()
✅ phone()
✅ email()
✅ maps()
✅ mapsSearch()
✅ pdf()
✅ download()
Sedangkan:
facebook()
instagram()
linkedin()
telegram()
playStore()
appStore()
lebih bersifat tambahan, tetapi tetap umum disediakan pada helper aplikasi produksi agar semua kebutuhan membuka URL berada dalam satu tempat yang konsisten.
*/