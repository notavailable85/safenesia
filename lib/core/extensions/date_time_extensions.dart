import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

extension DateTimeExtensions on DateTime {
  // =========================================================
  // FORMAT DATE
  // =========================================================

  String get toDate {
    return DateFormat('dd MMM yyyy', 'id_ID').format(this);
  }

  String get toDateShort {
    return DateFormat('dd/MM/yyyy', 'id_ID').format(this);
  }

  String get toDateIso {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  // =========================================================
  // FORMAT TIME
  // =========================================================

  String get toTime {
    return DateFormat('HH:mm', 'id_ID').format(this);
  }

  String get toTimeSeconds {
    return DateFormat('HH:mm:ss', 'id_ID').format(this);
  }

  // =========================================================
  // FORMAT DATETIME
  // =========================================================

  String get toDateTime {
    return DateFormat('dd MMM yyyy HH:mm', 'id_ID').format(this);
  }

  String get toFullDateTime {
    return DateFormat('dd MMMM yyyy HH:mm:ss', 'id_ID').format(this);
  }

  // =========================================================
  // DAY NAME
  // =========================================================

  String get dayName {
    return DateFormat('EEEE', 'id_ID').format(this);
  }

  String get shortDayName {
    return DateFormat('EEE', 'id_ID').format(this);
  }

  // =========================================================
  // MONTH NAME
  // =========================================================

  String get monthName {
    return DateFormat('MMMM', 'id_ID').format(this);
  }

  String get shortMonthName {
    return DateFormat('MMM', 'id_ID').format(this);
  }

  // =========================================================
  // RELATIVE TIME
  // =========================================================

  String get timeAgo {
    return timeago.format(this, locale: 'id');
  }

  // =========================================================
  // DATE COMPARISON
  // =========================================================

  bool get isToday {
    final now = DateTime.now();

    return year == now.year && month == now.month && day == now.day;
  }

  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));

    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }

  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));

    return year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day;
  }

  // =========================================================
  // EXPIRY
  // =========================================================

  bool get isExpired {
    return isBefore(DateTime.now());
  }

  bool get isNotExpired {
    return !isExpired;
  }

  bool get isExpiringSoon {
    final days = difference(DateTime.now()).inDays;

    return days >= 0 && days <= 30;
  }

  int get remainingDays {
    return difference(DateTime.now()).inDays;
  }

  // =========================================================
  // AGE
  // =========================================================

  int get age {
    final now = DateTime.now();

    int age = now.year - year;

    if (now.month < month || (now.month == month && now.day < day)) {
      age--;
    }

    return age;
  }

  // =========================================================
  // START END OF DAY
  // =========================================================

  DateTime get startOfDay {
    return DateTime(year, month, day);
  }

  DateTime get endOfDay {
    return DateTime(year, month, day, 23, 59, 59, 999);
  }

  // =========================================================
  // START END OF MONTH
  // =========================================================

  DateTime get startOfMonth {
    return DateTime(year, month, 1);
  }

  DateTime get endOfMonth {
    return DateTime(year, month + 1, 0, 23, 59, 59);
  }

  // =========================================================
  // START END OF YEAR
  // =========================================================

  DateTime get startOfYear {
    return DateTime(year, 1, 1);
  }

  DateTime get endOfYear {
    return DateTime(year, 12, 31, 23, 59, 59);
  }

  // =========================================================
  // DATE ARITHMETIC
  // =========================================================

  DateTime addDays(int days) {
    return add(Duration(days: days));
  }

  DateTime subtractDays(int days) {
    return subtract(Duration(days: days));
  }

  DateTime addHours(int hours) {
    return add(Duration(hours: hours));
  }

  DateTime addMinutes(int minutes) {
    return add(Duration(minutes: minutes));
  }

  // =========================================================
  // DIFFERENCE
  // =========================================================

  int daysBetween(DateTime other) {
    return difference(other).inDays;
  }

  int hoursBetween(DateTime other) {
    return difference(other).inHours;
  }

  int minutesBetween(DateTime other) {
    return difference(other).inMinutes;
  }

  // =========================================================
  // API FORMAT
  // =========================================================

  String get toApiDate {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String get toApiDateTime {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(this);
  }

  String get toIso8601 {
    return toIso8601String();
  }
}
/*
Contoh Penggunaan
Format Tanggal
DateTime.now().toDate

Output:

07 Jun 2026
Format Jam
DateTime.now().toTime

Output:

14:30
Format Datetime
DateTime.now().toDateTime

Output:

07 Jun 2026 14:30
Relative Time
article.createdAt.timeAgo

Output:

5 menit yang lalu
Expired Certificate
certificate.expiredAt.isExpired
certificate.expiredAt.isExpiringSoon
certificate.expiredAt.remainingDays
Reminder Renewal
if (
  certificate.expiredAt.isExpiringSoon
) {
  // tampilkan reminder
}
Umur Peserta
participant.birthDate.age

Output:

28
API Request Laravel
final date =
    DateTime.now().toApiDate;

Output:

2026-06-07
Dashboard Safenesia
Text(trainingDate.toDate);

Text(certificateDate.toDateTime);

Text(article.createdAt.timeAgo);

Text(
  '${certificate.expiredAt.remainingDays} hari',
);
Tambahan yang Saya Rekomendasikan

Untuk proyek Safenesia, saya biasanya juga membuat file terpisah:

extensions/
├── date_time_extensions.dart
├── duration_extensions.dart
└── string_to_date_extensions.dart

Sehingga konversi seperti:

'2026-06-07'.toDateTime()
tidak dicampur ke dalam DateTimeExtensions dan kode tetap lebih rapi serta mudah dirawat.
*/