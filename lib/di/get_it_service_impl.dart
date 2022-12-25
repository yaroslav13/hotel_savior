import 'package:get_it/get_it.dart';
import 'package:hotel_savior/di/get_it_service.dart';
import 'package:hotel_savior/di/get_it_service_impl.config.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(preferRelativeImports: false)
class GetItServiceImpl implements GetItService {
  GetItServiceImpl._(this.injection);

  static Future<GetItServiceImpl> get instance async {
    final getIt = await _init();
    return GetItServiceImpl._(getIt);
  }

  @override
  final GetIt injection;

  static Future<GetIt> _init() async {
    ///TODO: here must be [await] when [SharedPreferences] will be added
    final getIt = GetIt.I.init();
    await getIt.allReady();
    return getIt;
  }
}
