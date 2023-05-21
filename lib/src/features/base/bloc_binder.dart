import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_savior/src/features/base/bloc_host.dart';

base class BlocBinder<E, S, B extends Bloc<E, S>> extends StatelessWidget {
  const BlocBinder({
    required this.child,
    this.lazy = false,
    this.onCreate,
    super.key,
  });

  final Widget child;
  final void Function(B)? onCreate;
  final bool lazy;

  @override
  Widget build(BuildContext context) => BlocHost<E, S, B>(
        lazy: lazy,
        onCreate: (_, bloc) => onCreate?.call(bloc),
        builder: (_) => child,
      );
}
