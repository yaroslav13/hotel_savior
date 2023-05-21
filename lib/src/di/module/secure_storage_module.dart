import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class SecureStorageModule {
  @injectable
  IOSOptions get iosOptions => const IOSOptions(
    accessibility: KeychainAccessibility.first_unlock_this_device,
  );

  @injectable
  AndroidOptions get androidOptions => const AndroidOptions(
    encryptedSharedPreferences: true,
  );

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}
