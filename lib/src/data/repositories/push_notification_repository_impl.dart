import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hotel_savior/src/data/api/cloud_messages_api.dart';
import 'package:hotel_savior/src/data/api/device_token_api.dart';
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart';
import 'package:hotel_savior/src/domain/repositories/push_notifications_repository.dart';
import 'package:injectable/injectable.dart';

const _notificationChannelId = 'welcome_app_notification_channel_id';

const _notificationChannelName = 'New note notification';

@Singleton(as: PushNotificationsRepository)
class PushNotificationRepositoryImpl implements PushNotificationsRepository {
  PushNotificationRepositoryImpl(
    this._cloudMessagesApi,
    this._deviceTokenApi,
    this._authRepository,
    this._flutterLocalNotificationsPlugin,
  ) {
    _subscribePushNotifications();
  }

  final CloudMessagesApi _cloudMessagesApi;
  final DeviceTokenApi _deviceTokenApi;

  final AuthRepository _authRepository;

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  late final StreamSubscription<RemoteMessage> _pushNotificationsSubscription;

  @override
  Future<void> askPermission() async {
    final settings = await _cloudMessagesApi.askPermission();
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await _registerDeviceToken();
    }
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    await _pushNotificationsSubscription.cancel();
  }

  Future<void> _registerDeviceToken() async {
    try {
      final token = await _cloudMessagesApi.fetchDeviceIdentifier();

      await _deviceTokenApi.createDeviceToken(
        documentId: _authRepository.authorizedUserId,
        //ignore: avoid-non-null-assertion
        token: token!,
      );
    } on FirebaseException {
      // ignore
    }
  }

  void _subscribePushNotifications() {
    _pushNotificationsSubscription =
        _cloudMessagesApi.onMessage.listen((message) {
      if (Platform.isAndroid) {
        unawaited(
          _flutterLocalNotificationsPlugin.show(
            message.hashCode,
            message.notification?.title,
            message.notification?.body,
            const NotificationDetails(
              android: AndroidNotificationDetails(
                _notificationChannelId,
                _notificationChannelName,
                importance: Importance.max,
                priority: Priority.high,
              ),
            ),
          ),
        );
      }
    });
  }
}
