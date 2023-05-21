abstract interface class SecureStorageRepository {
  Future<void> write(String key, String? value);

  Future<String?> read(String key);

  Future<void> clear();
}
