import 'package:awesome_card/awesome_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/common/dots_loader_indicator.dart';
import 'package:hotel_savior/src/features/common/horizontal_stretched_button.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/membership_activation/membership_activation_bloc.dart';
import 'package:hotel_savior/src/features/message_delegate/message_delegate.dart';
import 'package:hotel_savior/src/features/utils/date_formatter_utils.dart';
import 'package:hotel_savior/src/features/utils/font_height_utils.dart';
import 'package:hotel_savior/src/features/utils/regular_expressions.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

part 'widgets/payment_card_details_form.dart';

class MembershipActivationScreen extends StatelessWidget {
  const MembershipActivationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocBinder<MembershipActivationEvent,
        MembershipActivationState, MembershipActivationBloc>(
      child: _MembershipActivationView(),
    );
  }
}

class _MembershipActivationView extends HookWidget
    with
        BlocHelper<MembershipActivationBloc, MembershipActivationEvent,
            MembershipActivationState> {
  const _MembershipActivationView();

  void _onSubmitPressed({
    required GlobalKey<FormState> formKey,
    required MembershipActivationBloc bloc,
  }) {
    //ignore: avoid-non-null-assertion
    if (formKey.currentState!.validate()) {
      bloc.add(
        const MembershipActivationEvent.submitPressed(),
      );
    }
  }

  bool _isPaymentCardDetailsChanged(
    MembershipActivationState previous,
    MembershipActivationState current,
  ) {
    return previous.cardNumber != current.cardNumber ||
        previous.cvv != current.cvv ||
        previous.expireDate != current.expireDate ||
        previous.cardHolderName != current.cardHolderName;
  }

  bool _checkIsPaymentDetailsFilled(MembershipActivationState state) {
    return (state.cardNumber?.isNotEmpty ?? false) &&
        (state.cvv?.isNotEmpty ?? false) &&
        (state.expireDate?.isNotEmpty ?? false) &&
        (state.cardHolderName?.isNotEmpty ?? false);
  }

  @override

  ///TODO: Probably, separate tree on small private widgets
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final bloc = getBoundBloc(context);

    return listen(
      listenWhen: (previous, current) =>
          previous.errorMessageLocaleKey != current.errorMessageLocaleKey,
      listener: (context, state) {
        final errorMessageLocaleKey = state.errorMessageLocaleKey;

        if (errorMessageLocaleKey != null) {
          context
              .getDependency<MessageDelegate>()
              .showSnackBar(context, errorMessageLocaleKey.tr());
        }
      },
      child: WillPopScope(
        ///TODO: In the future, you need to add a button to return
        ///to the home screen
        ///but home screen must be disabled in this case.
        ///For now, we use simplification and disable the back button.
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(LocaleKeys.membership.tr()),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                30.verticalSpace,
                Text(
                  LocaleKeys.membershipActivationDescription.tr(),
                  style: textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
                30.verticalSpace,
                observe(
                  buildWhen: _isPaymentCardDetailsChanged,
                  builder: (context, state) {
                    return CreditCard(
                      cardNumber: state.cardNumber,
                      cardExpiry: state.expireDate,
                      cardHolderName: state.cardHolderName,
                      cvv: state.cvv,
                      showShadow: true,
                      frontBackground: CardBackgrounds.black,
                      backBackground: CardBackgrounds.white,
                      cardType: CardType.masterCard,
                    );
                  },
                ),
                30.verticalSpace,
                _PaymentCardDetailsForm(
                  formKey: formKey,
                  onCardHolderChanged: (cardHolder) => bloc.add(
                    MembershipActivationEvent.cardHolderNameChanged(
                      name: cardHolder,
                    ),
                  ),
                  onCardNumberChanged: (cardNumber) => bloc.add(
                    MembershipActivationEvent.cardNumberChanged(
                      cardNumber: cardNumber,
                    ),
                  ),
                  onCvvCodeChanged: (cvvCode) => bloc.add(
                    MembershipActivationEvent.cvvChanged(cvv: cvvCode),
                  ),
                  onExpireDateChanged: (expireDate) => bloc.add(
                    MembershipActivationEvent.expireDateChanged(
                      expireDate: expireDate,
                    ),
                  ),
                ),
                30.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24).r,
                  child: SizedBox(
                    width: double.infinity,
                    child: observe(
                      buildWhen: (previous, current) =>
                          previous.isAddingCard != current.isAddingCard ||
                          _isPaymentCardDetailsChanged(previous, current),
                      builder: (context, state) {
                        return HorizontalStretchedButton(
                          onPressed: _checkIsPaymentDetailsFilled(state) &&
                                  !state.isAddingCard
                              ? () => _onSubmitPressed(
                                    formKey: formKey,
                                    bloc: bloc,
                                  )
                              : null,
                          child: state.isAddingCard
                              ? DotsLoaderIndicator(
                                  isExpanded: false,
                                  height: calculateFontHeight(
                                    //ignore: avoid-non-null-assertion
                                    textTheme.labelLarge!,
                                  ),
                                )
                              : Text(LocaleKeys.pay.tr()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
