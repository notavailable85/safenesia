import 'package:permission_handler/permission_handler.dart';

class PermissionHelper {
  PermissionHelper._();

  // =========================
  // GENERIC
  // =========================

  static Future<bool> request(Permission permission) async {
    final status = await permission.request();

    return status.isGranted;
  }

  static Future<bool> isGranted(Permission permission) async {
    final status = await permission.status;

    return status.isGranted;
  }

  static Future<bool> isDenied(Permission permission) async {
    final status = await permission.status;

    return status.isDenied;
  }

  static Future<bool> isPermanentlyDenied(Permission permission) async {
    final status = await permission.status;

    return status.isPermanentlyDenied;
  }

  // =========================
  // CAMERA
  // =========================

  static Future<bool> requestCamera() async {
    return request(Permission.camera);
  }

  static Future<bool> hasCamera() async {
    return isGranted(Permission.camera);
  }

  // =========================
  // PHOTO / GALLERY
  // =========================

  static Future<bool> requestPhotos() async {
    return request(Permission.photos);
  }

  static Future<bool> hasPhotos() async {
    return isGranted(Permission.photos);
  }

  // =========================
  // STORAGE
  // =========================

  static Future<bool> requestStorage() async {
    return request(Permission.storage);
  }

  static Future<bool> hasStorage() async {
    return isGranted(Permission.storage);
  }

  // =========================
  // MANAGE EXTERNAL STORAGE
  // =========================

  static Future<bool> requestManageStorage() async {
    return request(Permission.manageExternalStorage);
  }

  // =========================
  // NOTIFICATION
  // =========================

  static Future<bool> requestNotification() async {
    return request(Permission.notification);
  }

  static Future<bool> hasNotification() async {
    return isGranted(Permission.notification);
  }

  // =========================
  // LOCATION
  // =========================

  static Future<bool> requestLocation() async {
    return request(Permission.location);
  }

  static Future<bool> requestLocationAlways() async {
    return request(Permission.locationAlways);
  }

  static Future<bool> hasLocation() async {
    return isGranted(Permission.location);
  }

  // =========================
  // MICROPHONE
  // =========================

  static Future<bool> requestMicrophone() async {
    return request(Permission.microphone);
  }

  static Future<bool> hasMicrophone() async {
    return isGranted(Permission.microphone);
  }

  // =========================
  // CONTACTS
  // =========================

  static Future<bool> requestContacts() async {
    return request(Permission.contacts);
  }

  static Future<bool> hasContacts() async {
    return isGranted(Permission.contacts);
  }

  // =========================
  // PHONE
  // =========================

  static Future<bool> requestPhone() async {
    return request(Permission.phone);
  }

  static Future<bool> hasPhone() async {
    return isGranted(Permission.phone);
  }

  // =========================
  // CALENDAR
  // =========================

  static Future<bool> requestCalendar() async {
    return request(Permission.calendar);
  }

  static Future<bool> hasCalendar() async {
    return isGranted(Permission.calendar);
  }

  // =========================
  // BLUETOOTH
  // =========================

  static Future<bool> requestBluetooth() async {
    return request(Permission.bluetooth);
  }

  static Future<bool> hasBluetooth() async {
    return isGranted(Permission.bluetooth);
  }

  // =========================
  // MULTIPLE
  // =========================

  static Future<Map<Permission, PermissionStatus>> requestMultiple(
    List<Permission> permissions,
  ) async {
    return await permissions.request();
  }

  // =========================
  // COMMON APP PERMISSIONS
  // =========================

  static Future<bool> requestAppPermissions() async {
    final statuses = await [
      Permission.camera,
      Permission.notification,
      Permission.photos,
    ].request();

    return statuses.values.every((status) => status.isGranted);
  }

  // =========================
  // SETTINGS
  // =========================

  static Future<void> openSettings() async {
    await openAppSettings();
  }
}
/*
==============================
Cara Penggunaan
==============================
Camera
final granted =
    await PermissionHelper.requestCamera();
if (granted) {
  // buka kamera
}
Gallery
final granted =
    await PermissionHelper.requestPhotos();
if (granted) {
  // pilih gambar
}
Notification
await PermissionHelper
    .requestNotification();
Storage
final granted =
    await PermissionHelper.requestStorage();
Jika Permanently Denied
final denied =
    await PermissionHelper
        .isPermanentlyDenied(
  Permission.camera,
);
if (denied) {
  await PermissionHelper.openSettings();
}

Khusus Android 13+
Sejak Android 13, izin storage berubah menjadi:
Permission.photos
Permission.videos
Permission.audio
Sehingga untuk aplikasi baru, saya biasanya membuat helper yang lebih aman:

static Future<bool> requestMedia() async {
  final statuses = await [
    Permission.photos,
    Permission.videos,
  ].request();

  return statuses.values.every(
    (e) => e.isGranted,
  );
}
*/