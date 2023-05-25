import 'package:hotel_savior/src/domain/base/base_no_argument_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/repositories/hotels_repository.dart';
import 'package:injectable/injectable.dart';

const _countOfLatestHotelsVenues = 5;

@injectable
class FetchLatestHotelsVenuesInteractor
    implements BaseNoArgumentInteractor<List<Hotel>> {
  FetchLatestHotelsVenuesInteractor(this._hotelsRepository);

  final HotelsRepository _hotelsRepository;

  @override
  Future<List<Hotel>> call() =>
      _hotelsRepository.fetchLatestHotelsVenues(_countOfLatestHotelsVenues);
}
