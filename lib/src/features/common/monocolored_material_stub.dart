import 'package:flutter/material.dart';

class MonocoloredMaterialStub extends StatelessWidget {
  const MonocoloredMaterialStub({this.color, super.key});

  final Color? color;

  @override
  Widget build(BuildContext context) => Material(
        color: color ?? const Color(0xffE9DF00),
      );
}
