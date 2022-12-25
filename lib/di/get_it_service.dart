import 'package:get_it/get_it.dart';

abstract class GetItService {
  GetItService(this.injection);

  final GetIt injection;
}
