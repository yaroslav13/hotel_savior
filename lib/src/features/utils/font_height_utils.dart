import 'package:flutter/material.dart';

double calculateFontHeight(TextStyle style) {
  final size = style.fontSize;

  assert(size != null, 'Font size cannot be null');

  final height = style.height;

  //ignore: avoid-non-null-assertion
  return height == null ? size! + 9 : size! * height;
}
