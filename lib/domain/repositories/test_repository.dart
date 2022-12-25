import 'package:hotel_savior/domain/entities/test_entity.dart';

abstract class TestRepository {
  Future<TestEntity> test();
}
