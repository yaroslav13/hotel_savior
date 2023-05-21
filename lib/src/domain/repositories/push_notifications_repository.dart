import 'package:flutter/foundation.dart';

abstract interface class PushNotificationsRepository {
  Future<void> askPermission();

  // Dispose required for injectable, 
  // Do not use it manually
  @protected
  void dispose();
}
