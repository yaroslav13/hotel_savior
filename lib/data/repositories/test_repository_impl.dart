import 'package:hotel_savior/domain/entities/test_entity.dart';
import 'package:hotel_savior/domain/repositories/test_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TestRepository)
class TestRepositoryImpl implements TestRepository {
  @override
  Future<TestEntity> test() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return TestEntity();
  }
}
