import 'package:intl/intl.dart';

class CurrencyHelper {
  CurrencyHelper._();

  // =========================
  // FORMATTERS
  // =========================
  static final NumberFormat _idrFormatter = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );
  static final NumberFormat _idrNoSymbolFormatter = NumberFormat.decimalPattern(
    'id_ID',
  );
  // =========================
  // FORMAT RUPIAH
  // =========================
  static String format(num? amount) {
    return _idrFormatter.format(amount ?? 0);
  }

  // Rp 1.500.000
  static String toRupiah(num? amount) {
    return _idrFormatter.format(amount ?? 0);
  }

  // =========================
  // WITHOUT SYMBOL
  // =========================
  // 1.500.000
  static String withoutSymbol(num? amount) {
    return _idrNoSymbolFormatter.format(amount ?? 0);
  }

  // =========================
  // DECIMAL
  // =========================
  static String decimal(num? amount, {int digit = 2}) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: digit,
    ).format(amount ?? 0);
  }

  // =========================
  // USD
  // =========================
  static String usd(num? amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      symbol: '\$',
      decimalDigits: 2,
    ).format(amount ?? 0);
  }

  // =========================
  // GENERIC CURRENCY
  // =========================
  static String currency(
    num? amount, {
    String locale = 'id_ID',
    String symbol = '',
    int decimalDigits = 0,
  }) {
    return NumberFormat.currency(
      locale: locale,
      symbol: symbol,
      decimalDigits: decimalDigits,
    ).format(amount ?? 0);
  }

  // =========================
  // PARSE
  // =========================
  static double parse(String value) {
    final clean = value
        .replaceAll('Rp', '')
        .replaceAll('.', '')
        .replaceAll(',', '.')
        .trim();

    return double.tryParse(clean) ?? 0;
  }

  // =========================
  // SHORT FORMAT
  // =========================
  // 1.2K
  // 1.5JT
  // 2.3M
  // 1.2B
  static String short(num value) {
    if (value >= 1000000000) {
      return '${(value / 1000000000).toStringAsFixed(1)}B';
    }

    if (value >= 1000000) {
      return '${(value / 1000000).toStringAsFixed(1)}M';
    }

    if (value >= 1000) {
      return '${(value / 1000).toStringAsFixed(1)}K';
    }

    return value.toString();
  }

  // =========================
  // INDONESIAN SHORT
  // =========================
  // 1,5 Jt
  // 2,3 M
  static String shortId(num value) {
    if (value >= 1000000000) {
      return '${(value / 1000000000).toStringAsFixed(1)} Miliar';
    }

    if (value >= 1000000) {
      return '${(value / 1000000).toStringAsFixed(1)} Juta';
    }

    if (value >= 1000) {
      return '${(value / 1000).toStringAsFixed(1)} Ribu';
    }

    return value.toString();
  }

  // =========================
  // DISCOUNT
  // =========================
  static double discountAmount(double price, double percent) {
    return price * percent / 100;
  }

  static double afterDiscount(double price, double percent) {
    return price - discountAmount(price, percent);
  }

  // =========================
  // TAX
  // =========================
  static double taxAmount(double price, double taxPercent) {
    return price * taxPercent / 100;
  }

  static double afterTax(double price, double taxPercent) {
    return price + taxAmount(price, taxPercent);
  }

  // =========================
  // GRAND TOTAL
  // =========================
  static double grandTotal({
    required double subtotal,
    double discount = 0,
    double tax = 0,
  }) {
    final afterDiscountValue = subtotal - discount;
    return afterDiscountValue + tax;
  }

  // =========================
  // PERCENTAGE
  // =========================
  static String percent(num value) {
    return '${value.toStringAsFixed(0)}%';
  }

  // =========================
  // INVOICE
  // =========================
  static String invoiceAmount(num value) {
    return format(value);
  }

  // =========================
  // SAFE VALUE
  // =========================
  static double safe(num? value) {
    return value?.toDouble() ?? 0;
  }
}
/*
==============================
Contoh Penggunaan
==============================
Rupiah
CurrencyHelper.toRupiah(1500000);
Output:
Rp 1.500.000

Tanpa Simbol
CurrencyHelper.withoutSymbol(1500000);
Output:
1.500.000

USD
CurrencyHelper.usd(1500);
Output:
$1,500.00

Short Format
CurrencyHelper.short(1500000);
Output:
1.5M

Format Indonesia
CurrencyHelper.shortId(1500000);
Output:
1.5 Juta

Diskon
CurrencyHelper.afterDiscount(
  2000000,
  10,
);
Output:
1800000

Grand Total Invoice
CurrencyHelper.grandTotal(
  subtotal: 2000000,
  discount: 100000,
  tax: 190000,
);
Output:
2090000

Saran untuk Safenesia
Karena transaksi Anda mayoritas menggunakan Rupiah, saya biasanya menambahkan alias yang lebih singkat:
static String rupiah(num? amount) {
  return toRupiah(amount);
}
Sehingga di UI cukup:
Text(
  CurrencyHelper.rupiah(
    training.price,
  ),
);
*/