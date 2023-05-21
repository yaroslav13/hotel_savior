import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hotel_savior/src/domain/repositories/secure_storage_repository.dart';
import 'package:injectable/injectable.dart';

///TODO: Implement login with fingerprint. 

@LazySingleton(as: SecureStorageRepository)
class SecureStorageRepositoryImpl implements SecureStorageRepository {
  SecureStorageRepositoryImpl(
    this._flutterSecureStorage,
    this._iosOptions,
    this._androidOptions,
  );

  final FlutterSecureStorage _flutterSecureStorage;
  final IOSOptions _iosOptions;
  final AndroidOptions _androidOptions;

  @override
  Future<void> write(String key, String? value) async {
    try {
      await _flutterSecureStorage.write(
        key: key,
        value: value,
        iOptions: _iosOptions,
        aOptions: _androidOptions,
      );
    } on PlatformException {
      // Do nothing
    }
  }

  @override
  Future<String?> read(String key) async {
    try {
      return _flutterSecureStorage.read(
        key: key,
        iOptions: _iosOptions,
        aOptions: _androidOptions,
      );
    } on PlatformException {
      return null;
    }
  }

  @override
  Future<void> clear() async {
    try {
      await _flutterSecureStorage.deleteAll(
        iOptions: _iosOptions,
        aOptions: _androidOptions,
      );
    } on PlatformException {
      // Do nothing
    }
  }
}
