extension StringExtensions on String {
  // =========================================================
  // BASIC
  // =========================================================

  bool get isNullOrEmpty => trim().isEmpty;

  bool get isNotNullOrEmpty => trim().isNotEmpty;

  String get trimmed => trim();

  // =========================================================
  // CAPITALIZE
  // =========================================================

  String get capitalize {
    if (trim().isEmpty) return this;

    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get titleCase {
    if (trim().isEmpty) return this;

    return split(' ')
        .where((word) => word.isNotEmpty)
        .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }

  // =========================================================
  // INITIALS
  // =========================================================

  String get initials {
    if (trim().isEmpty) return '';

    final words = trim().split(' ');

    if (words.length == 1) {
      return words.first[0].toUpperCase();
    }

    return words.take(2).map((e) => e[0].toUpperCase()).join();
  }

  // =========================================================
  // EMAIL
  // =========================================================

  bool get isValidEmail {
    return RegExp(r'^[\w\-\.]+@([\w\-]+\.)+[\w\-]{2,}$').hasMatch(trim());
  }

  // =========================================================
  // PHONE
  // =========================================================

  bool get isValidPhone {
    return RegExp(r'^(08|\+628)[0-9]{8,13}$').hasMatch(trim());
  }

  // =========================================================
  // URL
  // =========================================================

  bool get isValidUrl {
    return Uri.tryParse(this)?.hasAbsolutePath ?? false;
  }

  // =========================================================
  // NUMBER
  // =========================================================

  bool get isNumeric {
    return double.tryParse(this) != null;
  }

  int get toInt {
    return int.tryParse(this) ?? 0;
  }

  double get toDouble {
    return double.tryParse(this) ?? 0;
  }

  // =========================================================
  // SLUG
  // =========================================================

  String get slug {
    return toLowerCase()
        .trim()
        .replaceAll(RegExp(r'[^\w\s-]'), '')
        .replaceAll(RegExp(r'\s+'), '-')
        .replaceAll(RegExp(r'-+'), '-');
  }

  // =========================================================
  // TRUNCATE
  // =========================================================

  String truncate(int maxLength) {
    if (length <= maxLength) {
      return this;
    }

    return '${substring(0, maxLength)}...';
  }

  // =========================================================
  // REMOVE HTML
  // =========================================================

  String get removeHtml {
    return replaceAll(RegExp(r'<[^>]*>'), '');
  }

  // =========================================================
  // REMOVE SPACE
  // =========================================================

  String get removeSpaces {
    return replaceAll(' ', '');
  }

  // =========================================================
  // REVERSE
  // =========================================================

  String get reverse {
    return split('').reversed.join();
  }

  // =========================================================
  // MASK EMAIL
  // =========================================================

  String get maskEmail {
    if (!contains('@')) return this;

    final parts = split('@');

    final name = parts[0];
    final domain = parts[1];

    if (name.length <= 2) {
      return this;
    }

    return '${name.substring(0, 2)}****@$domain';
  }

  // =========================================================
  // MASK PHONE
  // =========================================================

  String get maskPhone {
    if (length < 8) return this;

    return '${substring(0, 4)}****${substring(length - 3)}';
  }

  // =========================================================
  // REMOVE NON DIGIT
  // =========================================================

  String get digitsOnly {
    return replaceAll(RegExp(r'[^0-9]'), '');
  }

  // =========================================================
  // WHATSAPP FORMAT
  // =========================================================

  String get toWhatsappNumber {
    var phone = digitsOnly;

    if (phone.startsWith('0')) {
      phone = '62${phone.substring(1)}';
    }

    return phone;
  }

  // =========================================================
  // FILE EXTENSION
  // =========================================================

  String get fileExtension {
    if (!contains('.')) return '';

    return split('.').last.toLowerCase();
  }

  bool get isPdf {
    return fileExtension == 'pdf';
  }

  bool get isImage {
    return ['jpg', 'jpeg', 'png', 'webp', 'gif'].contains(fileExtension);
  }

  // =========================================================
  // FILE NAME
  // =========================================================

  String get fileName {
    return split('/').last;
  }

  // =========================================================
  // CONTAINS IGNORE CASE
  // =========================================================

  bool containsIgnoreCase(String value) {
    return toLowerCase().contains(value.toLowerCase());
  }
}
/*
Contoh Penggunaan
Title Case
final name =
    'ridwan firmansyah'.titleCase;

Output:

Ridwan Firmansyah
Initials
final initials =
    'Ridwan Firmansyah'.initials;

Output:

RF
Email Validation
if (email.isValidEmail) {
  //
}
Phone Validation
if (phone.isValidPhone) {
  //
}
Slug
final slug =
    'Pelatihan Ahli K3 Umum'.slug;

Output:

pelatihan-ahli-k3-umum
Truncate
title.truncate(30);

Output:

Pelatihan Ahli K3 Umum...
Remove HTML
html.removeHtml;

Input:

<p>Hello World</p>

Output:

Hello World
WhatsApp Number
'081234567890'
    .toWhatsappNumber;

Output:

6281234567890
File Type
fileUrl.isPdf
fileUrl.isImage
Mask Email
'ridwan@gmail.com'
    .maskEmail;

Output:

ri****@gmail.com
Mask Phone
'081234567890'
    .maskPhone;

Output:

0812****890
Catatan Perbaikan

Untuk method URL, saya sarankan mengganti implementasi menjadi lebih akurat:

bool get isValidUrl {
  final uri = Uri.tryParse(trim());

  return uri != null &&
      (uri.scheme == 'http' ||
          uri.scheme == 'https');
}
*/