import 'package:intl/intl.dart';

/// ===========================================================
/// NUM -> DURATION
/// ===========================================================

extension DurationNumExtensions on num {
  Duration get milliseconds => Duration(milliseconds: toInt());

  Duration get seconds => Duration(seconds: toInt());

  Duration get minutes => Duration(minutes: toInt());

  Duration get hours => Duration(hours: toInt());

  Duration get days => Duration(days: toInt());
}

/// ===========================================================
/// DURATION UTILITIES
/// ===========================================================

extension DurationExtensions on Duration {
  // =========================================================
  // FORMAT
  // =========================================================

  String get hhmmss {
    final hours = inHours.toString().padLeft(2, '0');

    final minutes = (inMinutes % 60).toString().padLeft(2, '0');

    final seconds = (inSeconds % 60).toString().padLeft(2, '0');

    return '$hours:$minutes:$seconds';
  }

  String get mmss {
    final minutes = inMinutes.toString().padLeft(2, '0');

    final seconds = (inSeconds % 60).toString().padLeft(2, '0');

    return '$minutes:$seconds';
  }

  // =========================================================
  // HUMAN READABLE
  // =========================================================

  String get humanize {
    if (inDays > 0) {
      return '$inDays hari';
    }

    if (inHours > 0) {
      return '$inHours jam';
    }

    if (inMinutes > 0) {
      return '$inMinutes menit';
    }

    return '$inSeconds detik';
  }

  String get fullHumanize {
    final days = inDays;
    final hours = inHours % 24;
    final minutes = inMinutes % 60;
    final seconds = inSeconds % 60;

    final parts = <String>[];

    if (days > 0) {
      parts.add('$days hari');
    }

    if (hours > 0) {
      parts.add('$hours jam');
    }

    if (minutes > 0) {
      parts.add('$minutes menit');
    }

    if (seconds > 0) {
      parts.add('$seconds detik');
    }

    return parts.join(' ');
  }

  // =========================================================
  // TOTAL VALUE
  // =========================================================

  double get totalMinutes => inSeconds / 60;

  double get totalHours => inMinutes / 60;

  double get totalDays => inHours / 24;

  // =========================================================
  // CHECK
  // =========================================================

  bool get isZero => inMilliseconds == 0;

  bool get isPositive => inMilliseconds > 0;

  bool get isNegative => inMilliseconds < 0;

  // =========================================================
  // ABS
  // =========================================================

  Duration get absolute => abs();

  // =========================================================
  // ADDITION
  // =========================================================

  Duration addSeconds(int seconds) {
    return this + Duration(seconds: seconds);
  }

  Duration addMinutes(int minutes) {
    return this + Duration(minutes: minutes);
  }

  Duration addHours(int hours) {
    return this + Duration(hours: hours);
  }

  Duration addDays(int days) {
    return this + Duration(days: days);
  }

  // =========================================================
  // SUBTRACTION
  // =========================================================

  Duration subtractSeconds(int seconds) {
    return this - Duration(seconds: seconds);
  }

  Duration subtractMinutes(int minutes) {
    return this - Duration(minutes: minutes);
  }

  Duration subtractHours(int hours) {
    return this - Duration(hours: hours);
  }

  Duration subtractDays(int days) {
    return this - Duration(days: days);
  }

  // =========================================================
  // TIMER DISPLAY
  // =========================================================

  String get countdown {
    if (inHours > 0) {
      return hhmmss;
    }

    return mmss;
  }

  // =========================================================
  // SHORT FORMAT
  // =========================================================

  String get short {
    if (inDays > 0) {
      return '${inDays}d';
    }

    if (inHours > 0) {
      return '${inHours}h';
    }

    if (inMinutes > 0) {
      return '${inMinutes}m';
    }

    return '${inSeconds}s';
  }

  // =========================================================
  // HOURS MINUTES
  // =========================================================

  String get hoursMinutes {
    final hours = inHours;

    final minutes = inMinutes.remainder(60);

    return '$hours jam $minutes menit';
  }

  // =========================================================
  // WORK HOURS
  // =========================================================

  String get workHours {
    final hours = totalHours;

    return NumberFormat('#,##0.##', 'id_ID').format(hours);
  }
}
/*
Contoh Penggunaan
Delay
await Future.delayed(
  2.seconds,
);

Daripada:

await Future.delayed(
  const Duration(seconds: 2),
);
OTP Timer
final duration =
    120.seconds;

print(
  duration.countdown,
);

Output:

02:00
Training Duration
final duration =
    Duration(hours: 8);

duration.humanize

Output:

8 jam
Sertifikasi
Duration(
  days: 365,
).humanize

Output:

365 hari
Full Humanize
Duration(
  days: 2,
  hours: 5,
  minutes: 30,
).fullHumanize

Output:

2 hari 5 jam 30 menit
Video Duration
Duration(
  minutes: 5,
  seconds: 15,
).mmss

Output:

05:15
Dashboard
trainingDuration.hoursMinutes

Output:

8 jam 30 menit
Reminder Renewal
final remaining =
    expiredDate
        .difference(
          DateTime.now(),
        );

remaining.fullHumanize

Output:

25 hari 4 jam 10 menit
Catatan Arsitektur Safenesia

Karena kita sudah membuat:

core/extensions/
├── num_extensions.dart
├── duration_extensions.dart

sebaiknya hapus bagian berikut dari num_extensions.dart:

Duration get milliseconds
Duration get seconds
Duration get minutes
Duration get hours
Duration get days

dan pindahkan sepenuhnya ke duration_extensions.dart.

Dengan begitu tanggung jawabnya menjadi jelas:

num_extensions.dart
→ format angka, rupiah, persen

duration_extensions.dart
→ seluruh operasi Duration

Ini lebih sesuai dengan prinsip Single Responsibility dan lebih mudah dirawat ketika aplikasi Safenesia berkembang besar.
*/