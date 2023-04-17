import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/theme/colors_container.dart';
import 'package:provider/provider.dart';

extension BuildContextColorsX on BuildContext {
  ColorsContainer get colors => read<ColorsContainer>();
}
