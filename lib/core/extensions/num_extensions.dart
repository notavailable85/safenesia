import 'package:intl/intl.dart';

extension NumExtensions on num {
  // =========================================================
  // CURRENCY
  // =========================================================

  String get toRupiah {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(this);
  }

  String toCurrency({String symbol = '', int decimalDigits = 0}) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: symbol,
      decimalDigits: decimalDigits,
    ).format(this);
  }

  // =========================================================
  // NUMBER FORMAT
  // =========================================================

  String get formatted {
    return NumberFormat('#,##0', 'id_ID').format(this);
  }

  String decimal([int digits = 2]) {
    return toStringAsFixed(digits);
  }

  String decimalFormatted([int digits = 2]) {
    return NumberFormat('#,##0.${'0' * digits}', 'id_ID').format(this);
  }

  // =========================================================
  // COMPACT
  // =========================================================

  String get compact {
    return NumberFormat.compact(locale: 'id').format(this);
  }

  // =========================================================
  // PERCENTAGE
  // =========================================================

  String get percentage {
    return '${toStringAsFixed(0)}%';
  }

  String percentageWithDigits([int digits = 2]) {
    return '${toStringAsFixed(digits)}%';
  }

  double percentOf(num total) {
    if (total == 0) {
      return 0;
    }

    return (this / total) * 100;
  }

  // =========================================================
  // ROUNDING
  // =========================================================

  double get roundToDouble {
    return round().toDouble();
  }

  double roundTo(int fractionDigits) {
    final factor = pow10(fractionDigits);

    return (this * factor).round() / factor;
  }

  double floorTo(int fractionDigits) {
    final factor = pow10(fractionDigits);

    return (this * factor).floor() / factor;
  }

  double ceilTo(int fractionDigits) {
    final factor = pow10(fractionDigits);

    return (this * factor).ceil() / factor;
  }

  // =========================================================
  // POSITIVE NEGATIVE
  // =========================================================

  bool get isPositive => this > 0;

  bool get isNegative => this < 0;

  bool get isZero => this == 0;

  // =========================================================
  // CLAMP
  // =========================================================

  num between(num min, num max) {
    return clamp(min, max);
  }

  // =========================================================
  // FILE SIZE
  // =========================================================

  String get fileSize {
    if (this < 1024) {
      return '$this B';
    }

    if (this < 1024 * 1024) {
      return '${(this / 1024).toStringAsFixed(2)} KB';
    }

    if (this < 1024 * 1024 * 1024) {
      return '${(this / (1024 * 1024)).toStringAsFixed(2)} MB';
    }

    return '${(this / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB';
  }

  // =========================================================
  // DURATION
  // =========================================================

  Duration get milliseconds => Duration(milliseconds: toInt());

  Duration get seconds => Duration(seconds: toInt());

  Duration get minutes => Duration(minutes: toInt());

  Duration get hours => Duration(hours: toInt());

  Duration get days => Duration(days: toInt());

  // =========================================================
  // SPACING
  // =========================================================

  double get h => toDouble();

  double get w => toDouble();

  // =========================================================
  // SAFE CONVERSION
  // =========================================================

  int get toSafeInt => toInt();

  double get toSafeDouble => toDouble();

  // =========================================================
  // ORDINAL
  // =========================================================

  String get ordinal {
    final value = toInt();

    if (value >= 11 && value <= 13) {
      return '${value}th';
    }

    switch (value % 10) {
      case 1:
        return '${value}st';
      case 2:
        return '${value}nd';
      case 3:
        return '${value}rd';
      default:
        return '${value}th';
    }
  }
}

/// ===========================================================
/// PRIVATE HELPER
/// ===========================================================

int pow10(int exponent) {
  int result = 1;

  for (var i = 0; i < exponent; i++) {
    result *= 10;
  }

  return result;
}
/*
Contoh Penggunaan
Rupiah
1500000.toRupiah

Output:

Rp 1.500.000
Currency
1500000.toCurrency(
  symbol: 'USD ',
);

Output:

USD 1.500.000
Format Angka
1000000.formatted

Output:

1.000.000
Compact Number
1500000.compact

Output:

1,5 jt

(tergantung locale)

Persentase
75.percentage

Output:

75%
Hitung Persentase
50.percentOf(200)

Output:

25
Pembulatan
3.14159.roundTo(2)

Output:

3.14
Clamp
150.between(
  0,
  100,
)

Output:

100
File Size
1048576.fileSize

Output:

1.00 MB
Duration
Future.delayed(
  2.seconds,
);

atau

Future.delayed(
  500.milliseconds,
);
Dashboard Safenesia
Text(
  totalPeserta.formatted,
)

Text(
  totalRevenue.toRupiah,
)

Text(
  completionRate.percentage,
)

Text(
  storageUsed.fileSize,
)
*/