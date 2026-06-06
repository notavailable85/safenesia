import 'package:intl/intl.dart';

class DateHelper {
  DateHelper._();

  // =========================
  // FORMATTERS
  // =========================
  static final DateFormat _date = DateFormat('dd/MM/yyyy');
  static final DateFormat _dateApi = DateFormat('yyyy-MM-dd');
  static final DateFormat _dateTime = DateFormat('dd/MM/yyyy HH:mm');
  static final DateFormat _dateTimeApi = DateFormat('yyyy-MM-dd HH:mm:ss');
  static final DateFormat _time = DateFormat('HH:mm');
  static final DateFormat _monthYear = DateFormat('MMMM yyyy', 'id_ID');
  static final DateFormat _fullDate = DateFormat('dd MMMM yyyy', 'id_ID');
  static final DateFormat _fullDateTime = DateFormat(
    'dd MMMM yyyy HH:mm',
    'id_ID',
  );
  // =========================
  // FORMAT DATE
  // =========================
  static String format(DateTime date) {
    return _date.format(date);
  }

  static String formatFull(DateTime date) {
    return _fullDate.format(date);
  }

  static String formatDateTime(DateTime date) {
    return _dateTime.format(date);
  }

  static String formatFullDateTime(DateTime date) {
    return _fullDateTime.format(date);
  }

  static String formatTime(DateTime date) {
    return _time.format(date);
  }

  static String formatMonthYear(DateTime date) {
    return _monthYear.format(date);
  }

  // =========================
  // API FORMAT
  // =========================
  static String toApi(DateTime date) {
    return _dateApi.format(date);
  }

  static String toApiDateTime(DateTime date) {
    return _dateTimeApi.format(date);
  }

  // =========================
  // PARSE
  // =========================
  static DateTime? parse(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    try {
      return DateTime.parse(value);
    } catch (_) {
      return null;
    }
  }

  // =========================
  // TODAY
  // =========================
  static DateTime today() {
    final now = DateTime.now();

    return DateTime(now.year, now.month, now.day);
  }

  static DateTime now() {
    return DateTime.now();
  }

  // =========================
  // AGE
  // =========================
  static int calculateAge(DateTime birthDate) {
    final today = DateTime.now();
    int age = today.year - birthDate.year;
    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }
    return age;
  }

  // =========================
  // DIFFERENCE
  // =========================
  static int daysBetween(DateTime start, DateTime end) {
    return end.difference(start).inDays;
  }

  static int hoursBetween(DateTime start, DateTime end) {
    return end.difference(start).inHours;
  }

  static int minutesBetween(DateTime start, DateTime end) {
    return end.difference(start).inMinutes;
  }

  // =========================
  // ADD
  // =========================
  static DateTime addDays(DateTime date, int days) {
    return date.add(Duration(days: days));
  }

  static DateTime addMonths(DateTime date, int months) {
    return DateTime(date.year, date.month + months, date.day);
  }

  static DateTime addYears(DateTime date, int years) {
    return DateTime(date.year + years, date.month, date.day);
  }

  // =========================
  // START / END
  // =========================
  static DateTime startOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  static DateTime endOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59);
  }

  // =========================
  // CHECK
  // =========================
  static bool isToday(DateTime date) {
    final now = DateTime.now();

    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  static bool isPast(DateTime date) {
    return date.isBefore(DateTime.now());
  }

  static bool isFuture(DateTime date) {
    return date.isAfter(DateTime.now());
  }

  static bool isExpired(DateTime date) {
    return date.isBefore(DateTime.now());
  }

  // =========================
  // CERTIFICATE
  // =========================
  static int daysUntilExpired(DateTime expiredDate) {
    return expiredDate.difference(DateTime.now()).inDays;
  }

  static bool willExpireSoon(DateTime expiredDate, {int days = 30}) {
    return daysUntilExpired(expiredDate) <= days;
  }

  // =========================
  // RELATIVE TIME
  // =========================
  static String timeAgo(DateTime date) {
    final diff = DateTime.now().difference(date);
    if (diff.inSeconds < 60) {
      return 'Baru saja';
    }
    if (diff.inMinutes < 60) {
      return '${diff.inMinutes} menit lalu';
    }
    if (diff.inHours < 24) {
      return '${diff.inHours} jam lalu';
    }
    if (diff.inDays < 30) {
      return '${diff.inDays} hari lalu';
    }
    if (diff.inDays < 365) {
      return '${(diff.inDays / 30).floor()} bulan lalu';
    }
    return '${(diff.inDays / 365).floor()} tahun lalu';
  }

  // =========================
  // SAFENESIA TRAINING
  // =========================
  static String trainingSchedule(DateTime start, DateTime end) {
    return '${formatFull(start)} - ${formatFull(end)}';
  }

  // =========================
  // CERTIFICATE VALIDITY
  // =========================
  static String certificateValidity(DateTime issueDate, DateTime expiredDate) {
    return '${format(issueDate)} - ${format(expiredDate)}';
  }

  // =========================
  // MONTH NAME
  // =========================
  static String monthName(int month) {
    const months = [
      '',
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember',
    ];
    return months[month];
  }

  // =========================
  // DAY NAME
  // =========================
  static String dayName(int weekday) {
    const days = [
      '',
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu',
      'Minggu',
    ];
    return days[weekday];
  }
}
/*
==============================
Contoh Penggunaan
==============================
DateHelper.format(DateTime.now());
Output:
06/06/2026

DateHelper.formatFull(DateTime.now());
Output:
06 Juni 2026

DateHelper.timeAgo(
  DateTime.now().subtract(
    const Duration(hours: 2),
  ),
);
Output:
2 jam lalu

DateHelper.daysUntilExpired(
  DateTime(2026, 12, 31),
);
Output:
208

DateHelper.willExpireSoon(
  certificateExpiredDate,
);
Output:
true / false
*/