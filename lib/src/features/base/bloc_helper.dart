import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BlocHelper<B extends Bloc<E, S>, E, S> {
  Widget observe({
    required BlocWidgetBuilder<S> builder,
    BlocBuilderCondition<S>? buildWhen,
  }) =>
      BlocBuilder<B, S>(
        builder: builder,
        buildWhen: buildWhen,
      );

  Widget listen({
    required BlocWidgetListener<S> listener,
    BlocListenerCondition<S>? listenWhen,
    Widget? child,
  }) =>
      BlocListener<B, S>(
        listener: listener,
        listenWhen: listenWhen,
        child: child,
      );

  Widget consume({
    required BlocWidgetBuilder<S> builder,
    required BlocWidgetListener<S> listener,
    BlocBuilderCondition<S>? buildWhen,
    BlocListenerCondition<S>? listenWhen,
  }) =>
      BlocConsumer<B, S>(
        builder: builder,
        buildWhen: buildWhen,
        listener: listener,
        listenWhen: listenWhen,
      );

  B getBoundBloc(BuildContext context) => BlocProvider.of<B>(context);

  BlocByType getBlocByType<BlocByType extends Bloc<BlocEvent, BlocState>,
          BlocEvent, BlocState>(BuildContext context) =>
      BlocProvider.of<BlocByType>(context);
}
