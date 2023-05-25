import 'package:hotel_savior/src/domain/base/base_no_argument_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/repositories/hotels_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchHotelsInteractor implements BaseNoArgumentInteractor<List<Hotel>> {
  FetchHotelsInteractor(this._hotelsRepository);

  final HotelsRepository _hotelsRepository;

  @override
  Future<List<Hotel>> call() => _hotelsRepository.fetchHotelsVenues();
}
