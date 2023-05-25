// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i17;
import 'package:firebase_auth/firebase_auth.dart' as _i16;
import 'package:firebase_core/firebase_core.dart' as _i15;
import 'package:firebase_messaging/firebase_messaging.dart' as _i18;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i19;
import 'package:flutter_screenutil/flutter_screenutil.dart' as _i43;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hotel_savior/src/data/api/auth_api.dart' as _i52;
import 'package:hotel_savior/src/data/api/cloud_messages_api.dart' as _i56;
import 'package:hotel_savior/src/data/api/device_token_api.dart' as _i57;
import 'package:hotel_savior/src/data/api/hotels_api.dart' as _i23;
import 'package:hotel_savior/src/data/api/hotels_rooms_offers_api.dart' as _i26;
import 'package:hotel_savior/src/data/api/hotels_services_api.dart' as _i27;
import 'package:hotel_savior/src/data/api/membership_status_api.dart' as _i32;
import 'package:hotel_savior/src/data/api/payment_cards_api.dart' as _i36;
import 'package:hotel_savior/src/data/api/rooms_reservations_api.dart' as _i41;
import 'package:hotel_savior/src/data/api/user_api.dart' as _i50;
import 'package:hotel_savior/src/data/mappers/hotel_mapper.dart' as _i21;
import 'package:hotel_savior/src/data/mappers/room_reservation_mapper.dart'
    as _i40;
import 'package:hotel_savior/src/data/repositories/addresses_repository_impl.dart'
    as _i4;
import 'package:hotel_savior/src/data/repositories/auth_repository_impl.dart'
    as _i54;
import 'package:hotel_savior/src/data/repositories/hotels_repository_impl.dart'
    as _i25;
import 'package:hotel_savior/src/data/repositories/hotels_rooms_offers_repository_impl.dart'
    as _i81;
import 'package:hotel_savior/src/data/repositories/hotels_services_repository_impl.dart'
    as _i29;
import 'package:hotel_savior/src/data/repositories/membership_status_repository_impl.dart'
    as _i64;
import 'package:hotel_savior/src/data/repositories/payment_card_repository_impl.dart'
    as _i66;
import 'package:hotel_savior/src/data/repositories/push_notification_repository_impl.dart'
    as _i68;
import 'package:hotel_savior/src/data/repositories/rooms_reservations_repository_impl.dart'
    as _i70;
import 'package:hotel_savior/src/data/repositories/secure_storage_repository_impl.dart'
    as _i45;
import 'package:hotel_savior/src/data/repositories/user_repository_impl.dart'
    as _i76;
import 'package:hotel_savior/src/di/module/firebase_auth_module.dart' as _i99;
import 'package:hotel_savior/src/di/module/firebase_core_module.dart' as _i101;
import 'package:hotel_savior/src/di/module/firebase_firestore_module.dart'
    as _i94;
import 'package:hotel_savior/src/di/module/firebase_messaging_module.dart'
    as _i95;
import 'package:hotel_savior/src/di/module/local_push_notifications_module.dart'
    as _i97;
import 'package:hotel_savior/src/di/module/logger_module.dart' as _i98;
import 'package:hotel_savior/src/di/module/secure_storage_module.dart' as _i96;
import 'package:hotel_savior/src/di/module/ui_size_adapter_module.dart'
    as _i100;
import 'package:hotel_savior/src/domain/interactors/add_payment_card_interactor.dart'
    as _i77;
import 'package:hotel_savior/src/domain/interactors/check_is_user_authorized_interactor.dart'
    as _i55;
import 'package:hotel_savior/src/domain/interactors/fetch_hotel_address_interactor.dart'
    as _i14;
import 'package:hotel_savior/src/domain/interactors/fetch_hotels_interactor.dart'
    as _i58;
import 'package:hotel_savior/src/domain/interactors/fetch_hotels_recommendations_interactor.dart'
    as _i91;
import 'package:hotel_savior/src/domain/interactors/fetch_hotels_services_by_type_interactor.dart'
    as _i59;
import 'package:hotel_savior/src/domain/interactors/fetch_latest_hotels_venues_interactor.dart'
    as _i60;
import 'package:hotel_savior/src/domain/interactors/fetch_membership_status_of_current_user_interactor.dart'
    as _i78;
import 'package:hotel_savior/src/domain/interactors/fetch_reservations_of_current_user_interactor.dart'
    as _i79;
import 'package:hotel_savior/src/domain/interactors/log_in_interactor.dart'
    as _i82;
import 'package:hotel_savior/src/domain/interactors/register_user_interactor.dart'
    as _i86;
import 'package:hotel_savior/src/domain/interactors/subscribe_membership_status_changes_interactor.dart'
    as _i74;
import 'package:hotel_savior/src/domain/repositories/addresses_repository.dart'
    as _i3;
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart'
    as _i53;
import 'package:hotel_savior/src/domain/repositories/hotels_repository.dart'
    as _i24;
import 'package:hotel_savior/src/domain/repositories/hotels_rooms_offers_repository.dart'
    as _i80;
import 'package:hotel_savior/src/domain/repositories/hotels_services_repository.dart'
    as _i28;
import 'package:hotel_savior/src/domain/repositories/membership_status_repository.dart'
    as _i63;
import 'package:hotel_savior/src/domain/repositories/payment_card_repository.dart'
    as _i65;
import 'package:hotel_savior/src/domain/repositories/push_notifications_repository.dart'
    as _i67;
import 'package:hotel_savior/src/domain/repositories/rooms_reservations_repository.dart'
    as _i69;
import 'package:hotel_savior/src/domain/repositories/secure_storage_repository.dart'
    as _i44;
import 'package:hotel_savior/src/domain/repositories/user_repository.dart'
    as _i75;
import 'package:hotel_savior/src/features/auth/auth_bloc.dart' as _i90;
import 'package:hotel_savior/src/features/auth/mappers/auth_error_reason_mapper.dart'
    as _i7;
import 'package:hotel_savior/src/features/home/home_bloc.dart' as _i92;
import 'package:hotel_savior/src/features/hotel_service_details/hotel_service_details_bloc.dart'
    as _i22;
import 'package:hotel_savior/src/features/mappers/explore_category_mapper.dart'
    as _i12;
import 'package:hotel_savior/src/features/mappers/offer_item_from_hotel_and_service_mapper.dart'
    as _i34;
import 'package:hotel_savior/src/features/mappers/offer_item_from_hotel_mapper.dart'
    as _i35;
import 'package:hotel_savior/src/features/membership_activation/membership_activation_bloc.dart'
    as _i83;
import 'package:hotel_savior/src/features/membership_status/membership_status_observer_bloc.dart'
    as _i84;
import 'package:hotel_savior/src/features/message_delegate/message_delegate.dart'
    as _i33;
import 'package:hotel_savior/src/features/navigation/navigation_key_container/navigation_key_container.dart'
    as _i42;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/auth_route_configuration_creator.dart'
    as _i8;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/explore_route_configuration_creator.dart'
    as _i13;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/home_route_configuration_creator.dart'
    as _i20;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/hotel_service_details_route_configuration_creator.dart'
    as _i61;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/membership_activation_route_configuration_creator.dart'
    as _i31;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/membership_benefits_route_configuration_creator.dart'
    as _i62;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/profile_route_configuration_creator.dart'
    as _i37;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/qr_code_route_configuration_creator.dart'
    as _i38;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/registration_route_configuration_creator.dart'
    as _i39;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/services_location_visualizer_route_configuration_creator.dart'
    as _i46;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/splash_route_configuration_creator.dart'
    as _i47;
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/updates_route_configuration_creator.dart'
    as _i49;
import 'package:hotel_savior/src/features/navigation/router_configurator.dart'
    as _i93;
import 'package:hotel_savior/src/features/navigation/routes_configurations_factory/root_routes_configurations_factory.dart'
    as _i71;
import 'package:hotel_savior/src/features/navigation/routes_configurations_factory/sub_routes_configurations_factory.dart'
    as _i73;
import 'package:hotel_savior/src/features/navigation/routes_tree_builder.dart'
    as _i88;
import 'package:hotel_savior/src/features/qr_code/qr_code_bloc.dart' as _i85;
import 'package:hotel_savior/src/features/registration/registration_bloc.dart'
    as _i87;
import 'package:hotel_savior/src/features/resources/app_images/app_image_mapper.dart'
    as _i6;
import 'package:hotel_savior/src/features/services_location_visualizer/services_location_visualizer_bloc.dart'
    as _i72;
import 'package:hotel_savior/src/features/splash/splash_bloc.dart' as _i89;
import 'package:hotel_savior/src/features/tabs/tabs_bloc.dart' as _i48;
import 'package:hotel_savior/src/features/theme/app_theme_factory.dart' as _i51;
import 'package:hotel_savior/src/features/theme/colors_container.dart' as _i9;
import 'package:hotel_savior/src/features/theme/material_properties/elevated_button/elevated_button_elevation.dart'
    as _i11;
import 'package:hotel_savior/src/features/utils/date_formatter_utils.dart'
    as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i30;

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
  gh.lazySingleton<_i3.AddressesRepository>(
      () => _i4.AddressesRepositoryImpl());
  gh.factory<_i5.AndroidOptions>(() => secureStorageModule.androidOptions);
  gh.factory<_i6.AppImageMapper>(() => _i6.AppImageMapper());
  gh.factory<_i7.AuthErrorReasonMapper>(() => _i7.AuthErrorReasonMapper());
  gh.factory<_i8.AuthRouteConfigurationCreator>(
      () => _i8.AuthRouteConfigurationCreator());
  gh.singleton<_i9.ColorsContainer>(_i9.ColorsContainer());
  gh.factory<_i10.DateFormatterUtils>(() => _i10.DateFormatterUtils());
  gh.factory<_i11.ElevatedButtonElevation>(
      () => _i11.ElevatedButtonElevation());
  gh.factory<_i12.ExploreCategoryMapper>(() => _i12.ExploreCategoryMapper());
  gh.factory<_i13.ExploreRouteConfigurationCreator>(
      () => _i13.ExploreRouteConfigurationCreator());
  gh.factory<_i14.FetchHotelAddressInteractor>(
      () => _i14.FetchHotelAddressInteractor(gh<_i3.AddressesRepository>()));
  await gh.singletonAsync<_i15.FirebaseApp>(
    () => firebaseCoreModule.firebaseApp,
    preResolve: true,
  );
  gh.singleton<_i16.FirebaseAuth>(firebaseAuthModule.firebaseAuth);
  gh.lazySingleton<_i17.FirebaseFirestore>(
      () => firebaseFirestoreModule.firebaseFirestore);
  gh.lazySingleton<_i18.FirebaseMessaging>(
      () => firebaseMessagingModule.firebaseMessaging);
  await gh.lazySingletonAsync<_i19.FlutterLocalNotificationsPlugin>(
    () => flutterLocalPushNotificationsModule.flutterLocalPushNotifications,
    preResolve: true,
  );
  gh.lazySingleton<_i5.FlutterSecureStorage>(
      () => secureStorageModule.secureStorage);
  gh.factory<_i20.HomeRouteConfigurationCreator>(
      () => _i20.HomeRouteConfigurationCreator());
  gh.factory<_i21.HotelMapper>(() => _i21.HotelMapper());
  gh.factory<_i22.HotelServiceDetailsBloc>(() =>
      _i22.HotelServiceDetailsBloc(gh<_i14.FetchHotelAddressInteractor>()));
  gh.factory<_i23.HotelsApi>(
      () => _i23.HotelsApi(gh<_i17.FirebaseFirestore>()));
  gh.lazySingleton<_i24.HotelsRepository>(() => _i25.HotelsRepositoryImpl(
        gh<_i23.HotelsApi>(),
        gh<_i21.HotelMapper>(),
      ));
  gh.factory<_i26.HotelsRoomsOffersApi>(
      () => _i26.HotelsRoomsOffersApi(gh<_i17.FirebaseFirestore>()));
  gh.factory<_i27.HotelsServicesApi>(
      () => _i27.HotelsServicesApi(gh<_i17.FirebaseFirestore>()));
  gh.lazySingleton<_i28.HotelsServicesRepository>(
      () => _i29.HotelsServicesRepositoryImpl(gh<_i27.HotelsServicesApi>()));
  gh.factory<_i5.IOSOptions>(() => secureStorageModule.iosOptions);
  gh.singleton<_i30.Logger>(loggerModule.logger);
  gh.factory<_i31.MembershipActivationRouteConfigurationCreator>(
      () => _i31.MembershipActivationRouteConfigurationCreator());
  gh.factory<_i32.MembershipStatusApi>(
      () => _i32.MembershipStatusApi(gh<_i17.FirebaseFirestore>()));
  gh.factory<_i33.MessageDelegate>(() => _i33.MessageDelegate());
  gh.factory<_i34.OfferItemFromHotelAndServiceMapper>(
      () => _i34.OfferItemFromHotelAndServiceMapper());
  gh.factory<_i35.OfferItemFromHotelMapper>(
      () => _i35.OfferItemFromHotelMapper());
  gh.factory<_i36.PaymentCardsApi>(
      () => _i36.PaymentCardsApi(gh<_i17.FirebaseFirestore>()));
  gh.factory<_i37.ProfileRouteConfigurationCreator>(
      () => _i37.ProfileRouteConfigurationCreator());
  gh.factory<_i38.QrCodeRouteConfigurationCreator>(
      () => _i38.QrCodeRouteConfigurationCreator());
  gh.factory<_i39.RegistrationRouteConfigurationCreator>(
      () => _i39.RegistrationRouteConfigurationCreator());
  gh.factory<_i40.RoomReservationMapper>(() => _i40.RoomReservationMapper());
  gh.factory<_i41.RoomsReservationsApi>(
      () => _i41.RoomsReservationsApi(gh<_i17.FirebaseFirestore>()));
  gh.lazySingleton<_i42.RootNavigationKeyContainer>(
      () => _i42.RootNavigationKeyContainer());
  gh.factory<_i43.ScreenUtil>(() => uiSizeAdapterModule.screenUtil);
  gh.lazySingleton<_i44.SecureStorageRepository>(
      () => _i45.SecureStorageRepositoryImpl(
            gh<_i5.FlutterSecureStorage>(),
            gh<_i5.IOSOptions>(),
            gh<_i5.AndroidOptions>(),
          ));
  gh.factory<_i46.ServiceLocationVisualizerRouteConfigurationCreator>(() =>
      _i46.ServiceLocationVisualizerRouteConfigurationCreator(
          gh<_i42.RootNavigationKeyContainer>()));
  gh.lazySingleton<_i42.ShellNavigationKeyContainer>(
      () => _i42.ShellNavigationKeyContainer());
  gh.factory<_i47.SplashRouteConfigurationCreator>(
      () => _i47.SplashRouteConfigurationCreator());
  gh.factory<_i48.TabsBloc>(() => _i48.TabsBloc());
  gh.factory<_i49.UpdatesRouteConfigurationCreator>(
      () => _i49.UpdatesRouteConfigurationCreator());
  gh.factory<_i50.UserApi>(() => _i50.UserApi(gh<_i17.FirebaseFirestore>()));
  gh.factory<_i51.AppThemeFactory>(() => _i51.AppThemeFactory(
        gh<_i9.ColorsContainer>(),
        gh<_i43.ScreenUtil>(),
        gh<_i11.ElevatedButtonElevation>(),
      ));
  gh.factory<_i52.AuthApi>(() => _i52.AuthApi(gh<_i16.FirebaseAuth>()));
  gh.lazySingleton<_i53.AuthRepository>(
    () => _i54.AuthRepositoryImpl(gh<_i52.AuthApi>()),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i55.CheckIsUserAuthorizedInteractor>(
      () => _i55.CheckIsUserAuthorizedInteractor(gh<_i53.AuthRepository>()));
  gh.factory<_i56.CloudMessagesApi>(
      () => _i56.CloudMessagesApi(gh<_i18.FirebaseMessaging>()));
  gh.factory<_i57.DeviceTokenApi>(
      () => _i57.DeviceTokenApi(gh<_i17.FirebaseFirestore>()));
  gh.factory<_i58.FetchHotelsInteractor>(
      () => _i58.FetchHotelsInteractor(gh<_i24.HotelsRepository>()));
  gh.factory<_i59.FetchHotelsServicesByTypeInteractor>(
      () => _i59.FetchHotelsServicesByTypeInteractor(
            gh<_i24.HotelsRepository>(),
            gh<_i28.HotelsServicesRepository>(),
          ));
  gh.factory<_i60.FetchLatestHotelsVenuesInteractor>(() =>
      _i60.FetchLatestHotelsVenuesInteractor(gh<_i24.HotelsRepository>()));
  gh.factory<_i61.HotelServiceDetailsRouteConfigurationCreator>(() =>
      _i61.HotelServiceDetailsRouteConfigurationCreator(
          gh<_i42.RootNavigationKeyContainer>()));
  gh.factory<_i62.MembershipBenefitsRouteConfigurationCreator>(() =>
      _i62.MembershipBenefitsRouteConfigurationCreator(
          gh<_i42.RootNavigationKeyContainer>()));
  gh.lazySingleton<_i63.MembershipStatusRepository>(
    () => _i64.MembershipStatusRepositoryImpl(
      gh<_i53.AuthRepository>(),
      gh<_i32.MembershipStatusApi>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.lazySingleton<_i65.PaymentCardRepository>(
      () => _i66.PaymentCardRepositoryImpl(
            gh<_i53.AuthRepository>(),
            gh<_i36.PaymentCardsApi>(),
          ));
  gh.singleton<_i67.PushNotificationsRepository>(
    _i68.PushNotificationRepositoryImpl(
      gh<_i56.CloudMessagesApi>(),
      gh<_i57.DeviceTokenApi>(),
      gh<_i53.AuthRepository>(),
      gh<_i19.FlutterLocalNotificationsPlugin>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.lazySingleton<_i69.RoomsReservationsRepository>(
      () => _i70.RoomsReservationsRepositoryImpl(
            gh<_i41.RoomsReservationsApi>(),
            gh<_i53.AuthRepository>(),
            gh<_i40.RoomReservationMapper>(),
          ));
  gh.factory<_i71.RootRoutesConfigurationsFactory>(
      () => _i71.RootRoutesConfigurationsFactory(
            gh<_i47.SplashRouteConfigurationCreator>(),
            gh<_i8.AuthRouteConfigurationCreator>(),
            gh<_i20.HomeRouteConfigurationCreator>(),
            gh<_i38.QrCodeRouteConfigurationCreator>(),
            gh<_i49.UpdatesRouteConfigurationCreator>(),
            gh<_i37.ProfileRouteConfigurationCreator>(),
            gh<_i13.ExploreRouteConfigurationCreator>(),
          ));
  gh.factory<_i72.ServicesLocationVisualizerBloc>(
      () => _i72.ServicesLocationVisualizerBloc(
            gh<_i59.FetchHotelsServicesByTypeInteractor>(),
            gh<_i58.FetchHotelsInteractor>(),
            gh<_i12.ExploreCategoryMapper>(),
          ));
  gh.factory<_i73.SubRoutesConfigurationsFactory>(
      () => _i73.SubRoutesConfigurationsFactory(
            gh<_i39.RegistrationRouteConfigurationCreator>(),
            gh<_i31.MembershipActivationRouteConfigurationCreator>(),
            gh<_i62.MembershipBenefitsRouteConfigurationCreator>(),
            gh<_i46.ServiceLocationVisualizerRouteConfigurationCreator>(),
            gh<_i61.HotelServiceDetailsRouteConfigurationCreator>(),
          ));
  gh.factory<_i74.SubscribeMembershipStatusChangesInteractor>(() =>
      _i74.SubscribeMembershipStatusChangesInteractor(
          gh<_i63.MembershipStatusRepository>()));
  gh.lazySingleton<_i75.UserRepository>(() => _i76.UserRepositoryImpl(
        gh<_i53.AuthRepository>(),
        gh<_i50.UserApi>(),
      ));
  gh.factory<_i77.AddPaymentCardInteractor>(
      () => _i77.AddPaymentCardInteractor(gh<_i65.PaymentCardRepository>()));
  gh.factory<_i78.FetchMembershipStatusOfCurrentUserInteractor>(() =>
      _i78.FetchMembershipStatusOfCurrentUserInteractor(
          gh<_i63.MembershipStatusRepository>()));
  gh.factory<_i79.FetchReservationsOfCurrentUserInteractor>(() =>
      _i79.FetchReservationsOfCurrentUserInteractor(
          gh<_i69.RoomsReservationsRepository>()));
  gh.lazySingleton<_i80.HotelsRoomsOffersRepository>(
      () => _i81.HotelsRoomsOffersRepositoryImpl(
            gh<_i26.HotelsRoomsOffersApi>(),
            gh<_i75.UserRepository>(),
          ));
  gh.factory<_i82.LogInInteractor>(() => _i82.LogInInteractor(
        gh<_i53.AuthRepository>(),
        gh<_i67.PushNotificationsRepository>(),
      ));
  gh.factory<_i83.MembershipActivationBloc>(() => _i83.MembershipActivationBloc(
        gh<_i77.AddPaymentCardInteractor>(),
        gh<_i10.DateFormatterUtils>(),
      ));
  gh.factory<_i84.MembershipStatusObserverBloc>(() =>
      _i84.MembershipStatusObserverBloc(
          gh<_i74.SubscribeMembershipStatusChangesInteractor>()));
  gh.factory<_i85.QrCodeBloc>(() =>
      _i85.QrCodeBloc(gh<_i79.FetchReservationsOfCurrentUserInteractor>()));
  gh.factory<_i86.RegisterUserInteractor>(() => _i86.RegisterUserInteractor(
        gh<_i53.AuthRepository>(),
        gh<_i75.UserRepository>(),
        gh<_i67.PushNotificationsRepository>(),
        gh<_i63.MembershipStatusRepository>(),
      ));
  gh.factory<_i87.RegistrationBloc>(() => _i87.RegistrationBloc(
        gh<_i86.RegisterUserInteractor>(),
        gh<_i10.DateFormatterUtils>(),
      ));
  gh.factory<_i88.RoutesTreeBuilder>(() => _i88.RoutesTreeBuilder(
        gh<_i71.RootRoutesConfigurationsFactory>(),
        gh<_i73.SubRoutesConfigurationsFactory>(),
      ));
  gh.factory<_i89.SplashBloc>(() => _i89.SplashBloc(
        gh<_i55.CheckIsUserAuthorizedInteractor>(),
        gh<_i78.FetchMembershipStatusOfCurrentUserInteractor>(),
      ));
  gh.factory<_i90.AuthBloc>(() => _i90.AuthBloc(gh<_i82.LogInInteractor>()));
  gh.factory<_i91.FetchHotelsRecommendationsInteractor>(
      () => _i91.FetchHotelsRecommendationsInteractor(
            gh<_i24.HotelsRepository>(),
            gh<_i75.UserRepository>(),
            gh<_i28.HotelsServicesRepository>(),
            gh<_i80.HotelsRoomsOffersRepository>(),
            gh<_i69.RoomsReservationsRepository>(),
          ));
  gh.factory<_i92.HomeBloc>(() => _i92.HomeBloc(
        gh<_i60.FetchLatestHotelsVenuesInteractor>(),
        gh<_i59.FetchHotelsServicesByTypeInteractor>(),
        gh<_i91.FetchHotelsRecommendationsInteractor>(),
      ));
  gh.lazySingleton<_i93.RouterConfigurator>(() => _i93.RouterConfigurator(
        gh<_i88.RoutesTreeBuilder>(),
        gh<_i42.ShellNavigationKeyContainer>(),
        gh<_i42.RootNavigationKeyContainer>(),
      ));
  return getIt;
}

class _$FirebaseFirestoreModule extends _i94.FirebaseFirestoreModule {}

class _$FirebaseMessagingModule extends _i95.FirebaseMessagingModule {}

class _$SecureStorageModule extends _i96.SecureStorageModule {}

class _$FlutterLocalPushNotificationsModule
    extends _i97.FlutterLocalPushNotificationsModule {}

class _$LoggerModule extends _i98.LoggerModule {}

class _$FirebaseAuthModule extends _i99.FirebaseAuthModule {}

class _$UiSizeAdapterModule extends _i100.UiSizeAdapterModule {}

class _$FirebaseCoreModule extends _i101.FirebaseCoreModule {}
