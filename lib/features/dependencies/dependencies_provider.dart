import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_savior/di/get_it_service.dart';
import 'package:hotel_savior/di/get_it_service_impl.dart';
import 'package:hotel_savior/features/dependencies/dependencies_bloc.dart';

class DependenciesProvider extends StatelessWidget {
  const DependenciesProvider({
    this.child,
    super.key,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) => FutureBuilder<GetItService>(
        future: GetItServiceImpl.instance,
        builder: (context, snapshot) => snapshot.hasData
            ? BlocProvider<DependenciesBloc>(
                create: (context) {
                  final getIt = snapshot.data!.injection;
                  final bloc = getIt.get<DependenciesBloc>()
                    ..add(DependenciesEvent(getIt));
                  return bloc;
                },
                child: child,
              )
            : const SizedBox.shrink(),
      );
}
