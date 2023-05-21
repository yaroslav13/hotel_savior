//ignore_for_file: avoid-non-null-assertion

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/gender/gender.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/relationship_status/relationship_status.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/user_credentials/user_credentials.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/user_details/user_details.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/email_already_in_use_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/invalid_email_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/interactors/register_user_interactor.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/utils/date_formatter_utils.dart';
import 'package:injectable/injectable.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(
    this._registerUserInteractor,
    this._dateFormatterUtils,
  ) : super(const RegistrationState()) {
    on<_BirthdayDateChanged>(_onBirthdayDateChanged);
    on<_EmailChanged>(_onEmailChanged);
    on<_GenderPicked>(_onGenderPicked);
    on<_KidsCountPicked>(_onKidsCountPicked);
    on<_PasswordApproved>(_onPasswordApproved);
    on<_RelationshipStatusPicked>(_onRelationshipStatusPicked);
    on<_FullNameChanged>(_onFullNameChanged);
    on<_FormSubmitted>(_onFormSubmitted);
  }

  final RegisterUserInteractor _registerUserInteractor;

  final DateFormatterUtils _dateFormatterUtils;

  void _onBirthdayDateChanged(
    _BirthdayDateChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(birthdayDate: event.birthdayDate));
  }

  void _onEmailChanged(
    _EmailChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(
      state.copyWith(
        email: event.email.trim(),
        isFormFilled: state.fullName != null && state.password != null,
      ),
    );
  }

  void _onGenderPicked(
    _GenderPicked event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(gender: event.gender));
  }

  void _onKidsCountPicked(
    _KidsCountPicked event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(kidsCount: event.kidsCount));
  }

  void _onPasswordApproved(
    _PasswordApproved event,
    Emitter<RegistrationState> emit,
  ) {
    emit(
      state.copyWith(
        password: event.password,
        isFormFilled: state.email != null && state.fullName != null,
      ),
    );
  }

  void _onRelationshipStatusPicked(
    _RelationshipStatusPicked event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(relationshipStatus: event.relationshipStatus));
  }

  void _onFullNameChanged(
    _FullNameChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(
      state.copyWith(
        fullName: event.fullName.trim(),
        isFormFilled: state.email != null && state.password != null,
      ),
    );
  }

  Future<void> _onFormSubmitted(
    _FormSubmitted event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(state.copyWith(isFormSubmitting: true));

    try {
      final userDetails = UserDetails.withCredentials(
        fullName: state.fullName!,
        userCredentials: UserCredentials(
          email: state.email!,
          password: state.password!,
        ),
        gender: state.gender,
        relationshipStatus: state.relationshipStatus,
        birthdayDate: _dateFormatterUtils.parse(state.birthdayDate!),
        kidsCount: state.kidsCount,
      );

      await _registerUserInteractor(userDetails as UserDetailsWithCredentials);

      emit(
        state.copyWith(
          isFormSubmissionSuccess: true,
        ),
      );
    } on FormatException {
      // Ignore
    } on InvalidEmailException {
      emit(
        state.copyWith(
          errorMessageLocaleKey: LocaleKeys.invalidEmail,
        ),
      );
    } on EmailAlreadyInUseException {
      emit(
        state.copyWith(
          errorMessageLocaleKey: LocaleKeys.emailAlreadyExists,
        ),
      );
    } on UnknownException {
      emit(
        state.copyWith(
          errorMessageLocaleKey: LocaleKeys.somethingWentWrong,
        ),
      );
    } finally {
      emit(state.copyWith(isFormSubmitting: false));
    }
  }
}
