import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_savior/features/extensions/build_context_x.dart';

class BlocHost<E, S, B extends Bloc<E, S>> extends StatelessWidget {
  const BlocHost({
    required this.builder,
    this.lazy = false,
    this.onCreate,
    Key? key,
  }) : super(key: key);

  final WidgetBuilder builder;
  final Function(BuildContext, B)? onCreate;

  final bool lazy;

  @override
  Widget build(BuildContext context) => BlocProvider<B>(
        create: (context) {
          final bloc = context.getDependency<B>();
          onCreate?.call(context, bloc);

          return bloc;
        },
        lazy: lazy,
        child: Builder(
          builder: builder,
        ),
      );
}
