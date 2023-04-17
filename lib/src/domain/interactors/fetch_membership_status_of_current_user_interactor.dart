import 'package:hotel_savior/src/domain/base/base_no_argument_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/membership_status/membership_status.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/repositories/membership_status_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchMembershipStatusOfCurrentUserInteractor
    implements BaseNoArgumentInteractor<MembershipStatus> {
  FetchMembershipStatusOfCurrentUserInteractor(
    this._membershipStatusRepository,
  );

  final MembershipStatusRepository _membershipStatusRepository;

  @override
  Future<MembershipStatus> call() async {
    try {
      return _membershipStatusRepository.fetchMembershipStatusOfCurrentUser();
    } on UnknownException {

      /* 
      For now, we will return inactive membership status if we can't fetch it
      from the database
      */ 
      return MembershipStatus.inactive;
    }
  }
}
