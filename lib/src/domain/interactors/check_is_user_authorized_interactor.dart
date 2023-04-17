import 'package:hotel_savior/src/domain/base/base_no_argument_interactor.dart';
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckIsUserAuthorizedInteractor
    implements BaseNoArgumentInteractor<bool> {
  const CheckIsUserAuthorizedInteractor(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<bool> call() => _authRepository.checkIsUserAuthorized();
}
