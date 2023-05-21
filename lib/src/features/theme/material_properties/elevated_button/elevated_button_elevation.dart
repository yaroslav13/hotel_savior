import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/theme/extensions/material_states_x.dart';
import 'package:injectable/injectable.dart';

@injectable
class ElevatedButtonElevation extends MaterialStateProperty<double> {
  @override
  double resolve(Set<MaterialState> states) {
    if (states.isPressed) {
      return 1;
    } else if (states.isDisabled) {
      return 3;
    } else {
      return 4;
    }
  }
}
