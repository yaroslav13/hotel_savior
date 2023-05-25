import 'package:hotel_savior/src/domain/base/base_stream_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/membership_status/membership_status.dart';
import 'package:hotel_savior/src/domain/repositories/membership_status_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubscribeMembershipStatusChangesInteractor
    implements BaseStreamInteractor<MembershipStatus> {
  SubscribeMembershipStatusChangesInteractor(this._membershipStatusRepository);

  final MembershipStatusRepository _membershipStatusRepository;

  @override
  Stream<MembershipStatus> call() =>
      _membershipStatusRepository.membershipStatusStream;
}
