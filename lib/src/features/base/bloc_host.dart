import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';

class BlocHost<E, S, B extends Bloc<E, S>> extends StatelessWidget {
  const BlocHost({
    required this.builder,
    this.lazy = false,
    this.onCreate,
    super.key,
  });

  final WidgetBuilder builder;
  final void Function(BuildContext, B)? onCreate;

  final bool lazy;

  B _createBloc(BuildContext context) {
    final bloc = context.getDependency<B>();
    onCreate?.call(context, bloc);

    return bloc;
  }

  @override
  Widget build(BuildContext context) => BlocProvider<B>(
        create: _createBloc,
        lazy: lazy,
        child: Builder(
          builder: builder,
        ),
      );
}
