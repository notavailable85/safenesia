class ValidatorHelper {
  ValidatorHelper._();

  // =========================
  // REQUIRED
  // =========================

  static String? required(String? value, {String fieldName = 'Field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName wajib diisi';
    }

    return null;
  }

  // =========================
  // EMAIL
  // =========================

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email wajib diisi';
    }

    final regex = RegExp(r'^[\w\-\.]+@([\w\-]+\.)+[\w\-]{2,4}$');

    if (!regex.hasMatch(value)) {
      return 'Format email tidak valid';
    }

    return null;
  }

  // =========================
  // PASSWORD
  // =========================

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password wajib diisi';
    }

    if (value.length < 8) {
      return 'Password minimal 8 karakter';
    }

    return null;
  }

  // =========================
  // STRONG PASSWORD
  // =========================

  static String? strongPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password wajib diisi';
    }

    if (value.length < 8) {
      return 'Password minimal 8 karakter';
    }

    final regex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).+$');

    if (!regex.hasMatch(value)) {
      return 'Password harus mengandung huruf besar, huruf kecil dan angka';
    }

    return null;
  }

  // =========================
  // CONFIRM PASSWORD
  // =========================

  static String? confirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Konfirmasi password wajib diisi';
    }

    if (value != password) {
      return 'Password tidak sama';
    }

    return null;
  }

  // =========================
  // PHONE NUMBER
  // =========================

  static String? phone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Nomor telepon wajib diisi';
    }

    final regex = RegExp(r'^(08|\+628)[0-9]{8,13}$');

    if (!regex.hasMatch(value)) {
      return 'Nomor telepon tidak valid';
    }

    return null;
  }

  // =========================
  // NAME
  // =========================

  static String? name(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Nama wajib diisi';
    }

    if (value.trim().length < 3) {
      return 'Nama minimal 3 karakter';
    }

    return null;
  }

  // =========================
  // NIK
  // =========================

  static String? nik(String? value) {
    if (value == null || value.isEmpty) {
      return 'NIK wajib diisi';
    }

    if (value.length != 16) {
      return 'NIK harus 16 digit';
    }

    return null;
  }

  // =========================
  // NPWP
  // =========================

  static String? npwp(String? value) {
    if (value == null || value.isEmpty) {
      return 'NPWP wajib diisi';
    }

    if (value.length < 15) {
      return 'NPWP tidak valid';
    }

    return null;
  }

  // =========================
  // URL
  // =========================

  static String? url(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final regex = RegExp(
      r'^(https?:\/\/)?([\w\-])+\.{1}([a-zA-Z]{2,63})([\/\w\.-]*)*\/?$',
    );

    if (!regex.hasMatch(value)) {
      return 'URL tidak valid';
    }

    return null;
  }

  // =========================
  // NUMBER
  // =========================

  static String? number(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Field wajib diisi';
    }

    if (double.tryParse(value) == null) {
      return 'Harus berupa angka';
    }

    return null;
  }

  // =========================
  // INTEGER
  // =========================

  static String? integer(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Field wajib diisi';
    }

    if (int.tryParse(value) == null) {
      return 'Harus berupa bilangan bulat';
    }

    return null;
  }

  // =========================
  // MIN LENGTH
  // =========================

  static String? minLength(String? value, int min) {
    if (value == null || value.isEmpty) {
      return 'Field wajib diisi';
    }

    if (value.length < min) {
      return 'Minimal $min karakter';
    }

    return null;
  }

  // =========================
  // MAX LENGTH
  // =========================

  static String? maxLength(String? value, int max) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (value.length > max) {
      return 'Maksimal $max karakter';
    }

    return null;
  }

  // =========================
  // RANGE LENGTH
  // =========================

  static String? rangeLength(String? value, int min, int max) {
    if (value == null || value.isEmpty) {
      return 'Field wajib diisi';
    }

    if (value.length < min || value.length > max) {
      return 'Panjang karakter harus antara $min - $max';
    }

    return null;
  }

  // =========================
  // DROPDOWN
  // =========================

  static String? dropdown<T>(T? value) {
    if (value == null) {
      return 'Silakan pilih salah satu';
    }

    return null;
  }

  // =========================
  // DATE
  // =========================

  static String? date(DateTime? value) {
    if (value == null) {
      return 'Tanggal wajib dipilih';
    }

    return null;
  }

  // =========================
  // FILE
  // =========================

  static String? file(String? path) {
    if (path == null || path.isEmpty) {
      return 'File wajib diupload';
    }

    return null;
  }

  // =========================
  // IMAGE
  // =========================

  static String? image(String? path) {
    if (path == null || path.isEmpty) {
      return 'Gambar wajib dipilih';
    }

    return null;
  }

  // =========================
  // AMOUNT
  // =========================

  static String? amount(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nominal wajib diisi';
    }

    final amount = double.tryParse(value);

    if (amount == null) {
      return 'Nominal tidak valid';
    }

    if (amount <= 0) {
      return 'Nominal harus lebih dari 0';
    }

    return null;
  }

  // =========================
  // CUSTOM
  // =========================

  static String? custom(bool condition, String message) {
    return condition ? null : message;
  }
}
/*
==============================
Contoh Penggunaan
==============================
Email
TextFormField(
  validator: ValidatorHelper.email,
)
Password
TextFormField(
  validator: ValidatorHelper.password,
)
Nama
TextFormField(
  validator: ValidatorHelper.name,
)
Required dengan Nama Field
TextFormField(
  validator: (value) {
    return ValidatorHelper.required(
      value,
      fieldName: 'Nama Lengkap',
    );
  },
)
Confirm Password
TextFormField(
  validator: (value) {
    return ValidatorHelper.confirmPassword(
      value,
      passwordController.text,
    );
  },
)

==============================
Ekspansi
==============================
Untuk Safenesia Saya Menyarankan Tambahan Khusus

Karena aplikasi Anda terkait pelatihan dan sertifikasi K3, biasanya saya menambahkan validator khusus:

ValidatorHelper.nik()
ValidatorHelper.npwp()
ValidatorHelper.phone()
ValidatorHelper.file()
ValidatorHelper.image()
ValidatorHelper.amount()

karena field-field tersebut akan sering dipakai pada:

Registrasi peserta
Sertifikasi
Upload dokumen
Invoice
Pembayaran
Profil peserta

Sehingga helper ini sudah cukup lengkap untuk kebutuhan aplikasi Flutter production skala menengah hingga besar seperti Safenesia.
*/