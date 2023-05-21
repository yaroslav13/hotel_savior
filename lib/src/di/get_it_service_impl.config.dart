// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:firebase_auth/firebase_auth.dart' as _i11;
import 'package:firebase_core/firebase_core.dart' as _i10;
import 'package:firebase_messaging/firebase_messaging.dart' as _i13;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i14;
import 'package:flutter_screenutil/flutter_screenutil.dart' as _i21;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hotel_savior/src/data/api/auth_api.dart' as _i28;
import 'package:hotel_savior/src/data/api/cloud_messages_api.dart' as _i32;
import 'package:hotel_savior/src/data/api/device_token_api.dart' as _i33;
import 'package:hotel_savior/src/data/api/membership_status_api.dart' as _i17;
import 'package:hotel_savior/src/data/api/user_api.dart' as _i26;
import 'package:hotel_savior/src/data/repositories/auth_repository_impl.dart'
    as _i30;
import 'package:hotel_savior/src/data/repositories/membership_status_repository_impl.dart'
    as _i36;
import 'package:hotel_savior/src/data/repositories/push_notification_repository_impl.dart'
    as _i38;
import 'package:hotel_savior/src/data/repositories/secure_storage_repository_impl.dart'
    as _i23;
import 'package:hotel_savior/src/data/repositories/user_repository_impl.dart'
    as _i43;
import 'package:hotel_savior/src/di/module/firebase_auth_module.dart' as _i55;
import 'package:hotel_savior/src/di/module/firebase_core_module.dart' as _i57;
import 'package:hotel_savior/src/di/module/firebase_firestore_module.dart'
    as _i50;
import 'package:hotel_savior/src/di/module/firebase_messaging_module.dart'
    as _i51;
import 'package:hotel_savior/src/di/module/local_push_notifications_module.dart'
    as _i53;
import 'package:hotel_savior/src/di/module/logger_module.dart' as _i54;
import 'package:hotel_savior/src/di/module/secure_storage_module.dart' as _i52;
import 'package:hotel_savior/src/di/module/ui_size_adapter_module.dart' as _i56;
import 'package:hotel_savior/src/domain/interactors/check_is_user_authorized_interactor.dart'
    as _i31;
import 'package:hotel_savior/src/domain/interactors/fetch_membership_status_of_current_user_interactor.dart'
    as _i45;
import 'package:hotel_savior/src/domain/interactors/log_in_interactor.dart'
    as _i34;
import 'package:hotel_savior/src/domain/interactors/register_user_interactor.dart'
    as _i47;
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart'
    as _i29;
import 'package:hotel_savior/src/domain/repositories/membership_status_repository.dart'
    as _i35;
import 'package:hotel_savior/src/domain/repositories/push_notifications_repository.dart'
    as _i37;
import 'package:hotel_savior/src/domain/repositories/secure_storage_repository.dart'
    as _i22;
import 'package:hotel_savior/src/domain/repositories/user_repository.dart'
    as _i42;
import 'package:hotel_savior/src/features/auth/auth_bloc.dart' as _i44;
import 'package:hotel_savior/src/features/auth/mappers/auth_error_reason_mapper.dart'
    as _i5;
import 'package:hotel_savior/src/features/membership_status/membership_status_observer_bloc.dart'
    as _i46;
import 'package:hotel_savior/src/features/message_delegate/message_delegate.dart'
    as _i18;
import 'package:hotel_savior/src/features/navigation/navigation_key_container/navigation_key_container.dart'
    as _i20;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/auth_route_configuration_creator.dart'
    as _i6;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/home_route_configuration_creator.dart'
    as _i15;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/registration_route_configuration_creator.dart'
    as _i19;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/splash_route_configuration_creator.dart'
    as _i24;
import 'package:hotel_savior/src/features/navigation/router_configurator.dart'
    as _i49;
import 'package:hotel_savior/src/features/navigation/routes_configurations_factory/root_routes_configurations_factory.dart'
    as _i39;
import 'package:hotel_savior/src/features/navigation/routes_configurations_factory/sub_routes_configurations_factory.dart'
    as _i25;
import 'package:hotel_savior/src/features/navigation/routes_tree_builder.dart'
    as _i40;
import 'package:hotel_savior/src/features/registration/registration_bloc.dart'
    as _i48;
import 'package:hotel_savior/src/features/resources/app_images/app_image_mapper.dart'
    as _i4;
import 'package:hotel_savior/src/features/splash/splash_bloc.dart' as _i41;
import 'package:hotel_savior/src/features/theme/app_theme_factory.dart' as _i27;
import 'package:hotel_savior/src/features/theme/colors_container.dart' as _i7;
import 'package:hotel_savior/src/features/theme/material_properties/elevated_button/elevated_button_elevation.dart'
    as _i9;
import 'package:hotel_savior/src/features/utils/date_formatter_utils.dart'
    as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i16;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final secureStorageModule = _$SecureStorageModule();
  final firebaseCoreModule = _$FirebaseCoreModule();
  final firebaseAuthModule = _$FirebaseAuthModule();
  final firebaseFirestoreModule = _$FirebaseFirestoreModule();
  final firebaseMessagingModule = _$FirebaseMessagingModule();
  final flutterLocalPushNotificationsModule =
      _$FlutterLocalPushNotificationsModule();
  final loggerModule = _$LoggerModule();
  final uiSizeAdapterModule = _$UiSizeAdapterModule();
  gh.factory<_i3.AndroidOptions>(() => secureStorageModule.androidOptions);
  gh.factory<_i4.AppImageMapper>(() => _i4.AppImageMapper());
  gh.factory<_i5.AuthErrorReasonMapper>(() => _i5.AuthErrorReasonMapper());
  gh.factory<_i6.AuthRouteConfigurationCreator>(
      () => _i6.AuthRouteConfigurationCreator());
  gh.singleton<_i7.ColorsContainer>(_i7.ColorsContainer());
  gh.factory<_i8.DateFormatterUtils>(() => _i8.DateFormatterUtils());
  gh.factory<_i9.ElevatedButtonElevation>(() => _i9.ElevatedButtonElevation());
  await gh.singletonAsync<_i10.FirebaseApp>(
    () => firebaseCoreModule.firebaseApp,
    preResolve: true,
  );
  gh.singleton<_i11.FirebaseAuth>(firebaseAuthModule.firebaseAuth);
  gh.lazySingleton<_i12.FirebaseFirestore>(
      () => firebaseFirestoreModule.firebaseFirestore);
  gh.lazySingleton<_i13.FirebaseMessaging>(
      () => firebaseMessagingModule.firebaseMessaging);
  await gh.lazySingletonAsync<_i14.FlutterLocalNotificationsPlugin>(
    () => flutterLocalPushNotificationsModule.flutterLocalPushNotifications,
    preResolve: true,
  );
  gh.lazySingleton<_i3.FlutterSecureStorage>(
      () => secureStorageModule.secureStorage);
  gh.factory<_i15.HomeRouteConfigurationCreator>(
      () => _i15.HomeRouteConfigurationCreator());
  gh.factory<_i3.IOSOptions>(() => secureStorageModule.iosOptions);
  gh.singleton<_i16.Logger>(loggerModule.logger);
  gh.factory<_i17.MembershipStatusApi>(
      () => _i17.MembershipStatusApi(gh<_i12.FirebaseFirestore>()));
  gh.factory<_i18.MessageDelegate>(() => _i18.MessageDelegate());
  gh.factory<_i19.RegistrationRouteConfigurationCreator>(
      () => _i19.RegistrationRouteConfigurationCreator());
  gh.lazySingleton<_i20.RootNavigationKeyContainer>(
      () => _i20.RootNavigationKeyContainer());
  gh.factory<_i21.ScreenUtil>(() => uiSizeAdapterModule.screenUtil);
  gh.lazySingleton<_i22.SecureStorageRepository>(
      () => _i23.SecureStorageRepositoryImpl(
            gh<_i3.FlutterSecureStorage>(),
            gh<_i3.IOSOptions>(),
            gh<_i3.AndroidOptions>(),
          ));
  gh.lazySingleton<_i20.ShellNavigationKeyContainer>(
      () => _i20.ShellNavigationKeyContainer());
  gh.factory<_i24.SplashRouteConfigurationCreator>(
      () => _i24.SplashRouteConfigurationCreator());
  gh.factory<_i25.SubRoutesConfigurationsFactory>(() =>
      _i25.SubRoutesConfigurationsFactory(
          gh<_i19.RegistrationRouteConfigurationCreator>()));
  gh.factory<_i26.UserApi>(() => _i26.UserApi(gh<_i12.FirebaseFirestore>()));
  gh.factory<_i27.AppThemeFactory>(() => _i27.AppThemeFactory(
        gh<_i7.ColorsContainer>(),
        gh<_i21.ScreenUtil>(),
        gh<_i9.ElevatedButtonElevation>(),
      ));
  gh.factory<_i28.AuthApi>(() => _i28.AuthApi(gh<_i11.FirebaseAuth>()));
  gh.lazySingleton<_i29.AuthRepository>(
    () => _i30.AuthRepositoryImpl(gh<_i28.AuthApi>()),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i31.CheckIsUserAuthorizedInteractor>(
      () => _i31.CheckIsUserAuthorizedInteractor(gh<_i29.AuthRepository>()));
  gh.factory<_i32.CloudMessagesApi>(
      () => _i32.CloudMessagesApi(gh<_i13.FirebaseMessaging>()));
  gh.factory<_i33.DeviceTokenApi>(
      () => _i33.DeviceTokenApi(gh<_i12.FirebaseFirestore>()));
  gh.factory<_i34.LogInInteractor>(
      () => _i34.LogInInteractor(gh<_i29.AuthRepository>()));
  gh.lazySingleton<_i35.MembershipStatusRepository>(
    () => _i36.MembershipStatusRepositoryImpl(
      gh<_i29.AuthRepository>(),
      gh<_i17.MembershipStatusApi>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i37.PushNotificationsRepository>(
    _i38.PushNotificationRepositoryImpl(
      gh<_i32.CloudMessagesApi>(),
      gh<_i33.DeviceTokenApi>(),
      gh<_i29.AuthRepository>(),
      gh<_i14.FlutterLocalNotificationsPlugin>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i39.RootRoutesConfigurationsFactory>(
      () => _i39.RootRoutesConfigurationsFactory(
            gh<_i24.SplashRouteConfigurationCreator>(),
            gh<_i6.AuthRouteConfigurationCreator>(),
            gh<_i15.HomeRouteConfigurationCreator>(),
          ));
  gh.factory<_i40.RoutesTreeBuilder>(() => _i40.RoutesTreeBuilder(
        gh<_i39.RootRoutesConfigurationsFactory>(),
        gh<_i25.SubRoutesConfigurationsFactory>(),
      ));
  gh.factory<_i41.SplashBloc>(
      () => _i41.SplashBloc(gh<_i31.CheckIsUserAuthorizedInteractor>()));
  gh.lazySingleton<_i42.UserRepository>(() => _i43.UserRepositoryImpl(
        gh<_i29.AuthRepository>(),
        gh<_i26.UserApi>(),
      ));
  gh.factory<_i44.AuthBloc>(() => _i44.AuthBloc(gh<_i34.LogInInteractor>()));
  gh.factory<_i45.FetchMembershipStatusOfCurrentUserInteractor>(() =>
      _i45.FetchMembershipStatusOfCurrentUserInteractor(
          gh<_i35.MembershipStatusRepository>()));
  gh.factory<_i46.MembershipStatusObserverBloc>(() =>
      _i46.MembershipStatusObserverBloc(
          gh<_i45.FetchMembershipStatusOfCurrentUserInteractor>()));
  gh.factory<_i47.RegisterUserInteractor>(() => _i47.RegisterUserInteractor(
        gh<_i29.AuthRepository>(),
        gh<_i42.UserRepository>(),
        gh<_i37.PushNotificationsRepository>(),
        gh<_i35.MembershipStatusRepository>(),
      ));
  gh.factory<_i48.RegistrationBloc>(() => _i48.RegistrationBloc(
        gh<_i47.RegisterUserInteractor>(),
        gh<_i8.DateFormatterUtils>(),
      ));
  gh.lazySingleton<_i49.RouterConfigurator>(() => _i49.RouterConfigurator(
        gh<_i40.RoutesTreeBuilder>(),
        gh<_i20.ShellNavigationKeyContainer>(),
        gh<_i20.RootNavigationKeyContainer>(),
      ));
  return getIt;
}

class _$FirebaseFirestoreModule extends _i50.FirebaseFirestoreModule {}

class _$FirebaseMessagingModule extends _i51.FirebaseMessagingModule {}

class _$SecureStorageModule extends _i52.SecureStorageModule {}

class _$FlutterLocalPushNotificationsModule
    extends _i53.FlutterLocalPushNotificationsModule {}

class _$LoggerModule extends _i54.LoggerModule {}

class _$FirebaseAuthModule extends _i55.FirebaseAuthModule {}

class _$UiSizeAdapterModule extends _i56.UiSizeAdapterModule {}

class _$FirebaseCoreModule extends _i57.FirebaseCoreModule {}
