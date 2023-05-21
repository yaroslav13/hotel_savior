import 'package:get_it/get_it.dart';
import 'package:hotel_savior/src/di/get_it_service.dart';
import 'package:hotel_savior/src/di/get_it_service_impl.config.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(preferRelativeImports: false, asExtension: false)
class GetItServiceImpl implements GetItService {
  GetItServiceImpl._(this.injection);

  @override
  final GetIt injection;

  static Future<GetItServiceImpl> get instance async {
    final getIt = await _init();

    return GetItServiceImpl._(getIt);
  }

  static Future<GetIt> _init() async {
    final getIt = GetIt.asNewInstance();

    return init(getIt);
  }
}
