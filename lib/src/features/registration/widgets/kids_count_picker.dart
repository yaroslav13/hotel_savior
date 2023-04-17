part of '../registration_screen.dart';

const _minChildrenCount = 0;
const _maxChildrenCount = 5;

class _KidsCountPicker extends StatelessWidget
    with BlocHelper<RegistrationBloc, RegistrationEvent, RegistrationState> {
  const _KidsCountPicker();

  String _mapKidsNumberToText(String number) =>
      number == _maxChildrenCount.toString() ? '5+' : number.toString();

  @override
  Widget build(BuildContext context) => observe(
        buildWhen: (previous, current) =>
            previous.kidsCount != current.kidsCount,
        builder: (context, state) => NumberPicker(
          value: state.kidsCount,
          minValue: _minChildrenCount,
          maxValue: _maxChildrenCount,
          onChanged: (count) => getBoundBloc(context)
              .add(RegistrationEvent.kidsCountPicked(count)),
          axis: Axis.horizontal,
          itemWidth: 65,
          itemHeight: 65,
          haptics: true,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black12),
          ),
          textMapper: _mapKidsNumberToText,
        ),
      );
}
